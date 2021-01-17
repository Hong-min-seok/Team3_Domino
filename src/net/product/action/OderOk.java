package net.product.action;

import net.product.db.ProductBean;
import net.product.db.ProductDAO;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class OderOk implements Action{

	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		System.out.println("주문 하러 옴");
		// 인코딩
		request.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html;charset=UTF-8");
		
		ActionForward forward = new ActionForward();
		ProductDAO productDAO = new ProductDAO();
		ProductBean productVO = new ProductBean();

		boolean result = false;

		try {
			System.out.println("여긴 옴?");
			
//			String member_codeS = (String)request.getParameter("member_code");
//			String nonmember_codeS = (String)request.getParameter("nonmember_code");
//			String store_codeS = (String)request.getParameter("store_code");
//			String pizza_codeS = (String)request.getParameter("pizza_code");
//			String pizza_size = (String)request.getParameter("pizza_size");
//			String dough_codeS = (String)request.getParameter("dough_code");
//			String side_codeS = (String)request.getParameter("side_code");
//			String other_codeS = (String)request.getParameter("other_code");
//			String add1S = (String)request.getParameter("add1");
//			String add2S = (String)request.getParameter("add2");
//			String add3S = (String)request.getParameter("add3");
//			String add4S = (String)request.getParameter("add4");
//			String add5S = (String)request.getParameter("add5");
			int member_code = 0;
			int nonmember_code = 0;
			int store_code = 0;
			int pizza_code = 0;
			String pizza_size = "";
			int dough_code = 0;
			int side_code = 0;
			int other_code = 0;
			int add1 = 0;
			int add2 = 0;
			int add3 = 0;
			int add4 = 0;
			int add5 = 0;
			
			try {	member_code = Integer.parseInt(request.getParameter("member_code"));
			productVO.setMember_code(member_code);} catch(Exception e) {};
			try {	nonmember_code = Integer.parseInt(request.getParameter("nonmember_code"));	
			productVO.setNonmember_code(nonmember_code);} catch(Exception e) {};
			try {	store_code = Integer.parseInt(request.getParameter("store_code"));	
			productVO.setStore_code(store_code);} catch(Exception e) {};
			try {	pizza_code = Integer.parseInt(request.getParameter("pizza_code"));	
			productVO.setPizza_code(pizza_code);} catch(Exception e) {};
			try {	pizza_size = (String)request.getParameter("pizza_size");	
			productVO.setPizza_size(pizza_size);} catch(Exception e) {};
			try {	dough_code = Integer.parseInt(request.getParameter("dough_code"));	
			productVO.setDough_code(dough_code);} catch(Exception e) {};
			try {	side_code = Integer.parseInt(request.getParameter("side_code"));	
			productVO.setSide_code(side_code);} catch(Exception e) {};
			try {	other_code = Integer.parseInt(request.getParameter("other_code"));	
			productVO.setOther_code(other_code);} catch(Exception e) {};
			try {	add1 = Integer.parseInt(request.getParameter("add1"));	
			productVO.setAdd1(add1);} catch(Exception e) {};
			try {	add2 = Integer.parseInt(request.getParameter("add2"));	
			productVO.setAdd2(add2);} catch(Exception e) {};
			try {	add3 = Integer.parseInt(request.getParameter("add3"));	
			productVO.setAdd3(add3);} catch(Exception e) {};
			try {	add4 = Integer.parseInt(request.getParameter("add4"));	
			productVO.setAdd4(add4);} catch(Exception e) {};
			try {	add5 = Integer.parseInt(request.getParameter("add5"));	
			productVO.setAdd5(add5);} catch(Exception e) {};
			
			String pizzaCnt = (String)request.getParameter("pizzaCnt");
			
			System.out.println("여긴 옴?");
			
			// Bean에 상품 담기
			/*
			 * productVO.setMember_code(member_code);
			 * productVO.setNonmember_code(nonmember_code);
			 * productVO.setStore_code(store_code); productVO.setPizza_code(pizza_code);
			 * productVO.setPizza_size(pizza_size); productVO.setDough_code(dough_code);
			 * productVO.setSide_code(side_code); productVO.setOther_code(other_code);
			 * productVO.setAdd1(add1); productVO.setAdd2(add2); productVO.setAdd3(add3);
			 * productVO.setAdd4(add4); productVO.setAdd5(add5);
			 */

			result = productDAO.setOder(productVO,pizzaCnt);

			// 주문 실패
			if(result==false){
				out.println("<script>");
				out.println("alert('상품 주문에 실패하였습니다. 다시 시도해 주시기 바랍니다.');");
				out.println("location.href='./product.pro';");
				out.println("</script>");
				out.close();
				return null;
			}


			// 전송 방식 = false : Forward 
				
			forward.setRedirect(true);
			// 접근 경로 지정
			forward.setPath("../Main.do");

			
			return forward;

		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
}