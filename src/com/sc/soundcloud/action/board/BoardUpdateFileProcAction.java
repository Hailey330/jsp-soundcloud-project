package com.sc.soundcloud.action.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sc.soundcloud.action.Action;
import com.sc.soundcloud.dto.BoardResponseDto;
import com.sc.soundcloud.dto.DetailResponseDto;
import com.sc.soundcloud.dto.ReplyResponseDto;
import com.sc.soundcloud.model.Board;
import com.sc.soundcloud.model.Users;
import com.sc.soundcloud.repository.BoardRepository;
import com.sc.soundcloud.repository.ReplyRepository;
import com.sc.soundcloud.util.Script;

public class BoardUpdateFileProcAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 0. 인증 확인
		HttpSession session = request.getSession();
		if (session.getAttribute("principal") == null) {
			Script.getMessage("잘못된 접근입니다.", response);
			return;
		}
		Users principal = (Users) session.getAttribute("principal");

		// 1. updateFile.jsp 에서 넘긴 파일 받기
		String realPath = request.getServletContext().getRealPath("/upload");
		System.out.println("updateFile realPath : " + realPath);
		String contextPath = request.getServletContext().getContextPath();
		System.out.println("updateFile realPath : " + realPath);

		int userId;
		int boardId;
		String musicFile = null;
		int maxSize = 10 * 1024 * 1024;

		try {
			MultipartRequest multi = new MultipartRequest(request, realPath, maxSize, "UTF-8",
					new DefaultFileRenamePolicy());
			// request 되는 순간 null로 변함
			String userFile = multi.getFilesystemName("musicFile");
			System.out.println("userFile : " + userFile); // 음악 파일 확인

//			String userImage = multi.getFilesystemName("musicImage");			
//			System.out.println("userImage : " + userImage);
			
			userId = Integer.parseInt(multi.getParameter("userId"));
			boardId = Integer.parseInt(multi.getParameter("boardId"));
			String title = multi.getParameter("title");
			String content = multi.getParameter("content");
			String fileImage = multi.getParameter("musicImage");
			
			musicFile = contextPath + "/upload/" + userFile;
			System.out.println("musicFile : " + musicFile);

			Board board = Board.builder()
					.id(boardId)
					.userId(userId)
					.userName(principal.getUsername())
					.title(title)
					.content(content)
					.fileImage(fileImage)
					.musicFile(musicFile)
					.build();

			// 2. BoardRepository 연결해서 update(boardId) 함수 호출
			BoardRepository boardRepository = BoardRepository.getInstance();
			int result = boardRepository.updateFile(board); // 새로운 음악파일로 update

			// 5. DB 에 넣은 users.userfile 값 들고 이동
			if (result == 1) {
				BoardResponseDto boardDto = BoardResponseDto.builder().board(board).build();
				request.setAttribute("boardDto", boardDto);
				System.out.println("boardDto 확인 ::: " + boardDto);
				RequestDispatcher dis = request.getRequestDispatcher("board/updateWrite.jsp");
				dis.forward(request, response);

//						Script.href("/soundcloud/board?cmd=updateWrite", response);
			} else {
				Script.back("ERROR! 다시 진행해주세요.", response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
