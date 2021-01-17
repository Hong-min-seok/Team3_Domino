package net.board.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.NewsBean;
import net.board.db.NewsDAO;

public class DominoUserNewsList implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("DominoUserNewsList 커맨드액션 들어옴");
		
		ActionForward forward = new ActionForward();
		NewsDAO newsdao = new NewsDAO();
		NewsBean newsbean = new NewsBean();
		List newslist=new ArrayList();
		
		int listcount = newsdao.getListCount();
		newslist = newsdao.getNewsList();
		
		request.setAttribute("newslist", newslist);
		request.setAttribute("listcount", listcount);
		
		forward.setRedirect(false);
		forward.setPath("./userNewsList.jsp");
		return forward;
	}

}
