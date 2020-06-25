package com.sc.soundcloud.action.users;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sc.soundcloud.action.Action;
import com.sc.soundcloud.model.RoleType;
import com.sc.soundcloud.model.Users;
import com.sc.soundcloud.repository.UsersRepository;
import com.sc.soundcloud.util.Script;

public class UsersJoinProcAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 유효성 검사
		if 
		(
				request.getParameter("username").equals("")||
				request.getParameter("username") == null ||
				request.getParameter("password").equals("") ||
				request.getParameter("password") == null ||
				request.getParameter("email").equals("") ||
				request.getParameter("email") == null
		) {
			return;
		}
		
		// 1. 파라메터 받기 
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String userRole = RoleType.USER.toString();
		
		// 2. User 오브젝트 변환
		Users user = Users.builder()
				.username(username)
				.password(password)
				.email(email)
				.userRole(userRole)
				.build();
		
		// 3. DB 연결 - UsersRepository save() 호출 
		UsersRepository usersRepository = UsersRepository.getInstance();
		int result = usersRepository.save(user);
		
		// 4. login.jsp 이동
		if(result == 1) {
			Script.href("Join Success", "/soundcloud/users?cmd=login", response);
		} else {
			Script.back("ERROR! Retry create account", response);
		}
		}
				
	}

