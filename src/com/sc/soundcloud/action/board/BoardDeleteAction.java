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

public class BoardDeleteAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 인증 확인 
		HttpSession session = request.getSession();
		if(session.getAttribute("principal") == null) {
			Script.getMessage("잘못된 접근입니다.", response);
			return;
		}
		if 
		(
				request.getParameter("boardId") == null ||
				request.getParameter("boardId").equals("")
		) {
			return;
		}
		int boardId = Integer.parseInt(request.getParameter("boardId"));
		
		BoardRepository boardRepository = BoardRepository.getInstance();
		int result = boardRepository.deleteById(boardId);
		Script.outText(result+"", response);
	}
}
