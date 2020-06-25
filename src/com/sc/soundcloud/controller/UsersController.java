package com.sc.soundcloud.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sc.soundcloud.action.Action;
import com.sc.soundcloud.action.users.UsersJoinAction;
import com.sc.soundcloud.action.users.UsersJoinProcAction;
import com.sc.soundcloud.action.users.UsersLoginAction;
import com.sc.soundcloud.action.users.UsersLoginProcAction;
import com.sc.soundcloud.action.users.UsersLogoutAction;
import com.sc.soundcloud.action.users.UsersUsernameCheckAction;

@WebServlet("/users")
public class UsersController extends HttpServlet {
	private final static String TAG = "UsersController : ";
	private static final long serialVersionUID = 1L;
       
    public UsersController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("path", request.getContextPath());
		// http://localhost:8000/soundcloud/users?cmd=join
		String cmd = request.getParameter("cmd");
		System.out.println(TAG + "router : " + cmd);
		Action action = router(cmd);
		action.execute(request, response);
	}
	
	public Action router(String cmd) {
		if(cmd.equals("join")) {
			return new UsersJoinAction();
		} else if(cmd.equals("joinProc")) {
			return new UsersJoinProcAction();
		} else if(cmd.equals("login")) {
			return new UsersLoginAction();
		} else if(cmd.equals("loginProc")) {
			return new UsersLoginProcAction();
		} else if(cmd.equals("logout")) {
			return new UsersLogoutAction();
		} else if(cmd.equals("usernameCheck")) {
			return new UsersUsernameCheckAction();
		} 
		return null;
	}

}
