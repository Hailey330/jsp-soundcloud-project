package com.sc.soundcloud.action.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sc.soundcloud.action.Action;
import com.sc.soundcloud.dto.BoardResponseDto;
import com.sc.soundcloud.dto.DetailResponseDto;
import com.sc.soundcloud.dto.ReplyResponseDto;
import com.sc.soundcloud.model.Board;
import com.sc.soundcloud.repository.BoardRepository;
import com.sc.soundcloud.repository.ReplyRepository;
import com.sc.soundcloud.util.Script;

public class BoardDetailAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		if(
//				request.getParameter("id") == null || 
//				request.getParameter("id").equals("")
//		) {
//			Script.back("잘못된 접근입니다.", response);
//			return;
//		}
		
		// stream 에서 넘긴 boardId 값 받기
		int boardId = Integer.parseInt(request.getParameter("boardId"));

		BoardRepository boardRepository = BoardRepository.getInstance();
		ReplyRepository replyRepository = ReplyRepository.getInstance();
		
		// Board 값 다 들고와서 뿌리기
		BoardResponseDto boardDto = boardRepository.findById(boardId);
		// Reply + User 해당 게시물의 댓글과 댓글 작성자 - 복수 값 
		List<ReplyResponseDto> replyDtos = replyRepository.findAll(boardId);
		
		DetailResponseDto detailDto = 
				DetailResponseDto.builder()
				.boardDto(boardDto)
				.replyDtos(replyDtos)
				.build();
		if (detailDto != null) {
			request.setAttribute("detailDto", detailDto);
			RequestDispatcher dis = request.getRequestDispatcher("board/detail.jsp");
			dis.forward(request, response);
		} else {
			Script.back("잘못된 접근입니다.", response);
		}
	}
}
