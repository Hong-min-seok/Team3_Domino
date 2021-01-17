package net.product.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.product.db.ProductBean;
import net.product.db.ProductDAO;

public class PizzaDetail implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("pizzaDetail 액션 커맨드 들어옴");
		
		ActionForward forward = new ActionForward();
		ProductBean productbean = new ProductBean();
		ProductDAO productdao = new ProductDAO();
		List doughList = new ArrayList();
		List toppingList = new ArrayList();
		List sideList = new ArrayList();
		List otherList = new ArrayList();
		
		int code = Integer.parseInt(request.getParameter("pizza_code"));
		productbean = productdao.getPizzaDetail(code);
		doughList = productdao.getDoughList();
		toppingList = productdao.getToppingList();
		sideList = productdao.getSideList();
		otherList = productdao.getOtherList();
		
		request.setAttribute("productbean", productbean);
		request.setAttribute("doughList", doughList);
		request.setAttribute("toppingList", toppingList);
		request.setAttribute("sideList", sideList);
		request.setAttribute("otherList", otherList);
		
		forward.setRedirect(false);
		forward.setPath("menuPizzaDetail.jsp");
		return forward;
	}

}
