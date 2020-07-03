package com.sc.soundcloud.action.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sc.soundcloud.action.Action;
import com.sc.soundcloud.dto.BoardResponseDto;
import com.sc.soundcloud.dto.DetailResponseDto;
import com.sc.soundcloud.dto.ReplyResponseDto;
import com.sc.soundcloud.model.Board;
import com.sc.soundcloud.repository.BoardRepository;
import com.sc.soundcloud.repository.ReplyRepository;
import com.sc.soundcloud.util.Script;

public class BoardUpdateFileAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if (
				request.getParameter("boardId") == null || 
				request.getParameter("boardId").equals("")
		) {
			Script.back("잘못된 접근입니다.", response);
			return;
		}

		// detail 에서 넘긴 boardId 값 받기
		int boardId = Integer.parseInt(request.getParameter("boardId"));

		BoardRepository boardRepository = BoardRepository.getInstance();

		// Board 값 다 들고와서 뿌리기
		BoardResponseDto boardDto = boardRepository.findById(boardId);
		
		if (boardDto != null) {
			request.setAttribute("boardDto", boardDto);
			RequestDispatcher dis = request.getRequestDispatcher("board/updateFile.jsp");
			dis.forward(request, response);
		} else {
			Script.back("잘못된 접근입니다.", response);
		}
	}
}
