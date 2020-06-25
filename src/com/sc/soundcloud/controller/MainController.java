package com.sc.soundcloud.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sc.soundcloud.action.Action;
import com.sc.soundcloud.action.main.HomePageAction;
import com.sc.soundcloud.action.main.MainPageAction;

@WebServlet("/main")
public class MainController extends HttpServlet {
	private final static String TAG = "MainController : ";
	private static final long serialVersionUID = 1L;
       
    public MainController() {
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
		if(cmd.equals("page")) {
			return new MainPageAction();
		} else if (cmd.equals("home")) {
			return new HomePageAction();
		}
		return null;
	}

}
