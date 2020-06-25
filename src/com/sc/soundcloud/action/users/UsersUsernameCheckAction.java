package com.sc.soundcloud.action.users;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sc.soundcloud.action.Action;
import com.sc.soundcloud.model.Users;
import com.sc.soundcloud.repository.UsersRepository;
import com.sc.soundcloud.util.Script;

public class UsersUsernameCheckAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		UsersRepository usersRepository = UsersRepository.getInstance();
		Users user = usersRepository.findByUsername(username);
		System.out.println("Username 체크 : " + username);
		if(user == null) {
			Script.outText("0", response);
		} else {
			Script.outText("1", response);
		}
	}
}
