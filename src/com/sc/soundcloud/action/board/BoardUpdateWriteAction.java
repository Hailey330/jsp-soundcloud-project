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

public class BoardUpdateWriteAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(
				request.getParameter("boardId") == null || 
				request.getParameter("boardId").equals("")
		  ) {
			Script.back("잘못된 접근입니다.", response);
			return;
		}
		
		// detail.jsp 에서 넘긴 boardId 값 받기
		int boardId = Integer.parseInt(request.getParameter("boardId"));

		BoardRepository boardRepository = BoardRepository.getInstance();
		// boardId 받은걸로 해당 board(title, content, musicFile, fileImage...) 찾고, 글 작성자 정보 찾음 
		BoardResponseDto boardDto = boardRepository.findById(boardId); 
		System.out.println("boardDto 확인 :::" + boardDto);

		if(boardDto != null) {
			request.setAttribute("boardDto", boardDto);
			RequestDispatcher dis = request.getRequestDispatcher("board/updateWrite.jsp");
			dis.forward(request, response);
		} else {
			Script.back("잘못된 접근입니다.", response);
		}
		
	}
		
}
