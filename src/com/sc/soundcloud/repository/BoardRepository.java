package com.sc.soundcloud.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.sc.soundcloud.db.DBConn;
import com.sc.soundcloud.dto.BoardResponseDto;
import com.sc.soundcloud.dto.TimeResponseDto;
import com.sc.soundcloud.model.Board;

// DAO
public class BoardRepository {

	private static final String TAG = "BoardRepository : ";
	private static BoardRepository instance = new BoardRepository();

	private BoardRepository() {
	}

	public static BoardRepository getInstance() {
		return instance;
	}

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public List<TimeResponseDto> findTime() {
		final String SQL = "SELECT * FROM board";
		List<TimeResponseDto> timeDto = null;

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);

			rs = pstmt.executeQuery();

			timeDto = new ArrayList<>();

			while (rs.next()) {
				SimpleDateFormat data = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String time = data.format(rs.getTimestamp(2));

				long timeStamp = Timestamp.valueOf(time).getTime();

				TimeResponseDto td = TimeResponseDto.builder()
						.id(rs.getInt(1))
						.time(timeStamp)
						.build();

				timeDto.add(td);
			}
			return timeDto;

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "findTime : " + e.getMessage());
		} finally {
			DBConn.close(conn, pstmt, rs);
		}

		return null;
	}

	public int updateFile(Board board) {
		final String SQL = "UPDATE board SET musicFile = ? WHERE userid = ? AND id = ?";

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			// 물음표 완성하기
			pstmt.setString(1, board.getMusicFile());
			pstmt.setInt(2, board.getUserId());
			pstmt.setInt(3, board.getId());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "updateFile : " + e.getMessage());
		} finally {
			DBConn.close(conn, pstmt);
		}
		return -1;
	}

	public int findByMaxBoardId(int userId) {
		final String SQL = "SELECT max(id) FROM board WHERE userId = ?";

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			// 물음표 완성하기
			pstmt.setInt(1, userId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "findByMaxBoardId : " + e.getMessage());
		} finally {
			DBConn.close(conn, pstmt, rs);
		}
		return -1;
	}

	public int save(Board board) {
		final String SQL = "INSERT INTO board(id, userId, userName, title, content, likeCount, playCount, musicFile, fileImage, createDate) VALUES(board_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, sysdate)";

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			// 물음표 완성하기
			pstmt.setInt(1, board.getUserId());
			pstmt.setString(2, board.getUserName());
			pstmt.setString(3, board.getTitle());
			pstmt.setString(4, board.getContent());
			pstmt.setInt(5, board.getLikeCount());
			pstmt.setInt(6, board.getPlayCount());
			pstmt.setString(7, board.getMusicFile());
			pstmt.setString(8, board.getFileImage());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "save : " + e.getMessage());
		} finally {
			DBConn.close(conn, pstmt);
		}
		return -1;
	}

	public int update(Board board) {
		final String SQL = "UPDATE board SET title = ?, content = ?, fileImage = ? WHERE userid = ? AND id = ?";

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			// 물음표 완성하기
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContent());
			pstmt.setString(3, board.getFileImage());
			pstmt.setInt(4, board.getUserId());
			pstmt.setInt(5, board.getId());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "update : " + e.getMessage());
		} finally {
			DBConn.close(conn, pstmt);
		}
		return -1;
	}

	public int deleteById(int id) {
		final String SQL = "DELETE FROM board WHERE id = ?";

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			// 물음표 완성하기
			pstmt.setInt(1, id);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "deleteById : " + e.getMessage());
		} finally {
			DBConn.close(conn, pstmt);
		}
		return -1;
	}

	public List<Board> findAll() { // 매개 변수가 필요없다. 어차피 다 찾을 거니까
		final String SQL = "SELECT * FROM board ORDER BY id DESC";
		List<Board> boards = new ArrayList<>();

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			// while 돌려서 rs → java 오브젝트에 넣기
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Board board = new Board(rs.getInt("id"), rs.getInt("userId"), rs.getString("userName"),
						rs.getString("title"), rs.getString("content"), rs.getString("musicFile"),
						rs.getString("fileImage"), rs.getInt("likeCount"), rs.getInt("playCount"),
						rs.getTimestamp("createDate"));
				boards.add(board);
			}
			return boards;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "findAll : " + e.getMessage());
		} finally {
			DBConn.close(conn, pstmt, rs);
		}
		return null;
	}

	public BoardResponseDto findById(int id) {
		StringBuilder sb = new StringBuilder();
		sb.append(
				"SELECT b.id, b.userId, b.title, b.content, b.likeCount, b.playCount, b.createDate, b.musicFile, b.fileImage, b.username, u.userprofile ");
		sb.append("FROM board b INNER JOIN users u ");
		sb.append("ON b.userId = u.id ");
		sb.append("WHERE b.id = ?");
		final String SQL = sb.toString();
		BoardResponseDto boardDto = null;

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			// 물음표 완성하기
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			// if 돌려서 rs → java 오브젝트에 넣기
			if (rs.next()) {
				boardDto = new BoardResponseDto();
				Board board = Board.builder().id(rs.getInt(1)).userId(rs.getInt(2)).title(rs.getString(3))
						.content(rs.getString(4)).likeCount(rs.getInt(5)).playCount(rs.getInt(6))
						.createDate(rs.getTimestamp(7)).musicFile(rs.getString(8)).fileImage(rs.getString(9))
						.userName(rs.getString(10)).build();
				boardDto.setBoard(board);
				boardDto.setUserProfile(rs.getString(11));
			}
			return boardDto;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "findById : " + e.getMessage());
		} finally {
			DBConn.close(conn, pstmt, rs);
		}
		return null;
	}

}