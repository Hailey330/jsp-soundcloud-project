package com.sc.soundcloud.action.users;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sc.soundcloud.action.Action;
import com.sc.soundcloud.model.Users;
import com.sc.soundcloud.repository.UsersRepository;
import com.sc.soundcloud.util.Script;

public class UsersLoginProcAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 유효성 검사
		if 
		(
				request.getParameter("username").equals("") || 
				request.getParameter("username") == null || 
				request.getParameter("password").equals("") || 
				request.getParameter("password") == null
		) {
			return;
		}

		// 1. 파라메터 받기
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		// 2. DB 연결 - UsersRepository findByUsername 호출
		UsersRepository usersRepository = UsersRepository.getInstance();
		Users user = usersRepository.findByUsernameAndPassword(username, password);
		System.out.println("LOGIN PROC : user : " + user);

		// 4. home.jsp 이동
		if (user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("principal", user);

			if (request.getParameter("remember") != null) {
				Cookie cookie = new Cookie("remember", user.getUsername());
				response.addCookie(cookie);
			} else {
				Cookie cookie = new Cookie("remember", "");
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
			Script.href("/soundcloud/home.jsp", response);
		} else {
			Script.back("ERROR!", response);
		}
	}
}
