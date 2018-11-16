package com.myhome.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.myhome.dao.BoardDao;
import com.myhome.dto.BoardDto;

public class BoardReadAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward actionForward = null;
		BoardDao dao = BoardDao.getInstance();
		BoardDto dto = null;
		int boardNum = Integer.parseInt(request.getParameter("brdNo"));
		String attName = "brd_" + boardNum;
		HttpSession session = request.getSession();
		
		if(session.getAttribute(attName) == null) {
			dao.updateHit(boardNum);
			session.setAttribute(attName, "Y");
		}
		dto = dao.select(boardNum);
		request.setAttribute("brdDto", dto);
		
		actionForward = new ActionForward();
		actionForward.setRedirect(false);
		actionForward.setNextPath("BoardReadView.do");
		return actionForward;
	}

}
