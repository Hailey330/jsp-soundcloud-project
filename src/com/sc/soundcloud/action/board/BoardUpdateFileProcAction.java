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
		
		Users principal = (Users)session.getAttribute("principal");

		
		// boardId 공백인지 아닌지 확인
		if (
				request.getParameter("boardId") == null || 
				request.getParameter("boardId").equals("")
		) {
			return;
		}

		// 1. updateFile.jsp 에서 넘긴 boardId 값 받기
		int boardId = Integer.parseInt(request.getParameter("boardId"));

		// 2. updateFile.jsp 에서 넘긴 파일 받기
		String realPath = request.getServletContext().getRealPath("/upload");
		String contextPath = request.getServletContext().getContextPath();

		String musicFile = null;
		int maxSize = 10 * 1024 * 1024;

		try {
			MultipartRequest multi = new MultipartRequest(request, realPath, maxSize, "UTF-8",
					new DefaultFileRenamePolicy());
			String userFile = multi.getFilesystemName("musicFile");
			musicFile = contextPath + "/upload/" + userFile;

			// 3. DB에 넣기
			Board board = Board.builder()
					.id(boardId)
					.userId(principal.getId())
					.musicFile(musicFile)
					.build();

			// 4. BoardRepository 연결해서 update(boardId) 함수 호출
			BoardRepository boardRepository = BoardRepository.getInstance();
			int result = boardRepository.updateFile(board);

			// 5. DB에 넣은 board.musicFile 들고 이동
			if (result == 1) {
				Script.href("/soundcloud/board?cmd=updateWrite&boardId=" + boardId + "&userFile=" + userFile, response);
			} else {
				Script.back("ERROR! 다시 진행해주세요.", response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
