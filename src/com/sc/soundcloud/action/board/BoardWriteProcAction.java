package com.sc.soundcloud.action.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sc.soundcloud.action.Action;
import com.sc.soundcloud.model.Board;
import com.sc.soundcloud.model.Users;
import com.sc.soundcloud.repository.BoardRepository;
import com.sc.soundcloud.util.Script;

public class BoardWriteProcAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 인증 확인
		HttpSession session = request.getSession();
//				if(session.getAttribute("principal") == null) {
//					Script.getMessage("잘못된 접근!", response);
//					return;
//				}
		Users principal = (Users) session.getAttribute("principal");

		// 1. write.jsp 에서 넘긴 파일 받기
		String realPath = request.getServletContext().getRealPath("/upload");
		System.out.println("realPath2 : " + realPath);
		String contextPath = request.getServletContext().getContextPath();
		System.out.println("contextPath2 : " + contextPath);
		
		int userId;
		int boardId;
		String fileImage = null;
		int maxSize = 10 * 1024 * 1024;

		try {
			MultipartRequest multi = new MultipartRequest(request, realPath, maxSize, "UTF-8",
					new DefaultFileRenamePolicy());
			// request 되는 순간 null로 변함
			String userImage = multi.getFilesystemName("musicImage");			
			System.out.println("userImage : " + userImage);

			userId = Integer.parseInt(multi.getParameter("userId"));
			boardId = Integer.parseInt(multi.getParameter("boardId"));
			
			String title = multi.getParameter("title");
			String content = multi.getParameter("content");

			fileImage = contextPath + "/upload/" +  userImage;
			System.out.println("fileImage : " + fileImage);
			
			// 2. DB 에 넣기
			Board board = Board.builder()
					.id(boardId)
					.userId(userId)
					.title(title)
					.content(content)
					.fileImage(fileImage)
					.build();

			// 3. BoardRepository 연결해서 update(board) 함수 호출
			BoardRepository boardRepository = BoardRepository.getInstance();
			int result = boardRepository.update(board);

			// 5. 페이지 이동
			if (result == 1) {
				Script.href("/soundcloud/board?cmd=stream", response);
//				Script.href("/soundcloud/board?cmd=detail&id" + id, response);
			} else {
				Script.back("ERROR! 다시 진행해주세요.", response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
