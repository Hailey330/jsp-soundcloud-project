package com.sc.soundcloud.action.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sc.soundcloud.action.Action;
import com.sc.soundcloud.model.Board;
import com.sc.soundcloud.repository.BoardRepository;
import com.sc.soundcloud.util.Script;

public class BoardStreamAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("principal") == null) {
			Script.getMessage("잘못된 접근입니다.", response);
		} else {
			// 1. DB연결해서 Board 목록 다 불러오기
			BoardRepository boardRepository = BoardRepository.getInstance();
			List<Board> boards = boardRepository.findAll();

			request.setAttribute("boards", boards);

			RequestDispatcher dis = request.getRequestDispatcher("board/stream.jsp");
			dis.forward(request, response);
		}
	}
}
