package com.sc.soundcloud.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.sc.soundcloud.db.DBConn;
import com.sc.soundcloud.dto.ReplyResponseDto;
import com.sc.soundcloud.model.Reply;

// DAO
public class ReplyRepository {

	private static final String TAG = "ReplyRepository : ";
	private static ReplyRepository instance = new ReplyRepository();

	private ReplyRepository() {
	}

	public static ReplyRepository getInstance() {
		return instance;
	}

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	
	public List<ReplyResponseDto> findAll(int boardId) { 
		StringBuffer sb = new StringBuffer();
		sb.append("SELECT r.id, r.userid, r.boardid, r.content, r.createDate, ");
		sb.append("u.username, u.userprofile ");
		sb.append("FROM reply r INNER JOIN users u ");
		sb.append("ON r.userid = u.id ");
		sb.append("WHERE boardid = ? ");
		sb.append("ORDER BY r.id DESC");
		final String SQL = sb.toString();
		List<ReplyResponseDto> replyDtos = new ArrayList<>();
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			// 물음표 완성하기
			pstmt.setInt(1, boardId);
			rs = pstmt.executeQuery();
			// while 돌려서 rs → java 오브젝트에 넣기 
			while (rs.next()) {
				Reply reply = Reply.builder()
						.id(rs.getInt(1))
						.userId(rs.getInt(2))
						.boardId(rs.getInt(3))
						.content(rs.getString(4))
						.createDate(rs.getTimestamp(5))
						.build();
				ReplyResponseDto replyDto = ReplyResponseDto.builder()
						.reply(reply)
						.username(rs.getString(6))
						.userProfile(rs.getString(7))
						.build();
				replyDtos.add(replyDto);
			}
			return replyDtos;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "findAll(boardId) : " +e.getMessage());
		} finally {
			DBConn.close(conn, pstmt, rs);
		}
		return null;
	}
	public int save(Reply reply) {
		final String SQL = "INSERT INTO reply(id, boardId, userId, content, createDate) VALUES(reply_seq.nextval, ?, ?, ?, sysdate)";
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			// 물음표 완성하기
			pstmt.setInt(1, reply.getBoardId());
			pstmt.setInt(2, reply.getUserId());
			pstmt.setString(3, reply.getContent());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "save : " +e.getMessage());
		} finally {
			DBConn.close(conn, pstmt);
		}
		return -1;
	}
	
	public int update(Reply reply) {
		final String SQL = "";
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			// 물음표 완성하기
			
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "update : " +e.getMessage());
		} finally {
			DBConn.close(conn, pstmt);
		}
		return -1;
	}
	
	public int deleteById(int id) {
		final String SQL = "DELETE FROM reply WHERE id = ?";
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			// 물음표 완성하기
			pstmt.setInt(1, id);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "deleteById : " +e.getMessage());
		} finally {
			DBConn.close(conn, pstmt);
		}
		return -1;
	}
	
	public List<Reply> findAll() { // 매개 변수가 필요없다. 어차피 다 찾을 거니까
		final String SQL = "";
		List<Reply> replys = new ArrayList<>();
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			// 물음표 완성하기
			
			// while 돌려서 rs → java 오브젝트에 넣기 
			
			return replys;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "findAll : " +e.getMessage());
		} finally {
			DBConn.close(conn, pstmt, rs);
		}
		return null;
	}
	
	public Reply findById(int id) { // 매개 변수가 필요없다. 어차피 다 찾을 거니까
		final String SQL = "";
		Reply reply= new Reply();
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			// 물음표 완성하기
			
			// if 돌려서 rs → java 오브젝트에 넣기 
			
			return reply;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "findById : " +e.getMessage());
		} finally {
			DBConn.close(conn, pstmt, rs);
		}
		return null;
	}

}