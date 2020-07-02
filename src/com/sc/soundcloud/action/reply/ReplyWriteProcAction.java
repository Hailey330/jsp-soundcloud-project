package com.sc.soundcloud.action.reply;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.sc.soundcloud.action.Action;
import com.sc.soundcloud.dto.ReplyResponseDto;
import com.sc.soundcloud.model.Reply;
import com.sc.soundcloud.repository.ReplyRepository;
import com.sc.soundcloud.util.Script;

public class ReplyWriteProcAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// application/json
		BufferedReader br = request.getReader();
		StringBuffer sb = new StringBuffer();
		String input = null;
		while ((input = br.readLine()) != null) {
			sb.append(input);
		}
		System.out.println(sb.toString());
		Gson gson = new Gson();
		Reply reply = gson.fromJson(sb.toString(), Reply.class);
		
		// ReplyRepository 연결 - save(reply)
		ReplyRepository replyRepository = ReplyRepository.getInstance();
		int result = replyRepository.save(reply);
		
		if(result == 1) {
			List<ReplyResponseDto> replyDtos = replyRepository.findAll(reply.getBoardId());
			String replyDtosJson = gson.toJson(replyDtos);
			Script.outJson(replyDtosJson, response);
		} else {
			Script.outJson(result + "", response);
		}
		
	}
}
