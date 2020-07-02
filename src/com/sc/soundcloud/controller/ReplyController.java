package com.sc.soundcloud.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sc.soundcloud.action.Action;
import com.sc.soundcloud.action.board.BoardDetailAction;
import com.sc.soundcloud.action.board.BoardFileUploadAction;
import com.sc.soundcloud.action.board.BoardFileUploadProcAction;
import com.sc.soundcloud.action.board.BoardStreamAction;
import com.sc.soundcloud.action.board.BoardWriteAction;
import com.sc.soundcloud.action.board.BoardWriteProcAction;
import com.sc.soundcloud.action.reply.ReplyDeleteProcAction;
import com.sc.soundcloud.action.reply.ReplyWriteProcAction;

@WebServlet("/reply")
public class ReplyController extends HttpServlet {
	private final static String TAG = "BoardController : ";
	private static final long serialVersionUID = 1L;
       
    public ReplyController() {
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
		if(cmd.equals("writeProc")) {
			return new ReplyWriteProcAction();
		} else if (cmd.equals("deleteProc")) {
			return new ReplyDeleteProcAction();
		}
		return null;
	}

}
