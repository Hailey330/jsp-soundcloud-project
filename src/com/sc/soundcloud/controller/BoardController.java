package com.sc.soundcloud.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sc.soundcloud.action.Action;
import com.sc.soundcloud.action.board.BoardDeleteAction;
import com.sc.soundcloud.action.board.BoardDetailAction;
import com.sc.soundcloud.action.board.BoardFileUploadAction;
import com.sc.soundcloud.action.board.BoardFileUploadProcAction;
import com.sc.soundcloud.action.board.BoardStreamAction;
import com.sc.soundcloud.action.board.BoardUpdateFileAction;
import com.sc.soundcloud.action.board.BoardUpdateFileProcAction;
import com.sc.soundcloud.action.board.BoardUpdateWriteAction;
import com.sc.soundcloud.action.board.BoardUpdateWriteProcAction;
import com.sc.soundcloud.action.board.BoardWriteAction;
import com.sc.soundcloud.action.board.BoardWriteProcAction;

@WebServlet("/board")
public class BoardController extends HttpServlet {
	private final static String TAG = "BoardController : ";
	private static final long serialVersionUID = 1L;
       
    public BoardController() {
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
		if(cmd.equals("stream")) {
			return new BoardStreamAction();
		} else if(cmd.equals("fileUpload")) {
			// 파일 업로드 -> fileProc -> write -> writeProc -> stream 목록에 뿌림
			return new BoardFileUploadAction();
		} else if(cmd.equals("fileUploadProc")) {
			return new BoardFileUploadProcAction(); 
		} else if(cmd.equals("write")) {
			return new BoardWriteAction(); 
		} else if(cmd.equals("writeProc")) {
			return new BoardWriteProcAction(); 
		} else if(cmd.equals("detail")) {
			return new BoardDetailAction(); 
		} else if(cmd.equals("updateFile")) {
			return new BoardUpdateFileAction(); 
		} else if(cmd.equals("updateFileProc")) {
			return new BoardUpdateFileProcAction(); 
		} else if(cmd.equals("updateWrite")) {
			return new BoardUpdateWriteAction(); 
		} else if(cmd.equals("updateWriteProc")) {
			return new BoardUpdateWriteProcAction(); 
		} else if(cmd.equals("delete")) {
			return new BoardDeleteAction(); 
		} 
		return null;
	}

}
