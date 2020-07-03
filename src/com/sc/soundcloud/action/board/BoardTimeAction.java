package com.sc.soundcloud.action.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sc.soundcloud.action.Action;
import com.sc.soundcloud.dto.TimeResponseDto;
import com.sc.soundcloud.repository.BoardRepository;

public class BoardTimeAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardRepository boardRepository = BoardRepository.getInstance();
		List<TimeResponseDto> timeDtos = boardRepository.findTime();
		
		request.setAttribute("timeDto", timeDtos);
		
		RequestDispatcher dis = request.getRequestDispatcher("/soundcloud/detail.jsp");
	}
}
