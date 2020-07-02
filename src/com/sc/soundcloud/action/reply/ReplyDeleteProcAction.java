package com.sc.soundcloud.action.reply;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sc.soundcloud.action.Action;
import com.sc.soundcloud.repository.ReplyRepository;
import com.sc.soundcloud.util.Script;

public class ReplyDeleteProcAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("replyId") == null || request.getParameter("replyId").equals("")) {
			return;
		}
		
		int replyId = Integer.parseInt(request.getParameter("replyId"));
		System.out.println("ReplyDeleteProcAction : replyId : " + replyId);
		
		ReplyRepository replyRepository = ReplyRepository.getInstance();
		int result = replyRepository.deleteById(replyId);
		Script.outText(result+"", response);
	}
}
