package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.SessionService;
import service.SessionServiceImpl;

import java.io.IOException;

import dto.Session;

@WebServlet(urlPatterns = {"/session/write.do"})
public class SessionWriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SessionService sService = new SessionServiceImpl();
      
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 클래스 가격 받아오기
		//long classcode = Long.parseLong(request.getParameter("classcode"));
		long classcode = 107;
		
		try {
			long price = sService.selectPriceOne(classcode);
			if(price >= 0) {
				request.setAttribute("price", price);
			}
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/WEB-INF/session/session_write.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//long classcode = Long.parseLong(request.getParameter("classcode"));
		long classcode = 107;
		
		Session obj = new Session();
		obj.setMinimum(Long.parseLong(request.getParameter("min")));
		obj.setMaximum(Long.parseLong(request.getParameter("max")));
		obj.setClassdate(request.getParameter("date"));
		obj.setClassday(request.getParameter("day"));
		obj.setClassstart(request.getParameter("start"));
		obj.setClassend(request.getParameter("end"));
		obj.setDiscount(Float.parseFloat(request.getParameter("rate")));
		obj.setAddprice(Long.parseLong(request.getParameter("addprice")));
		obj.setClasslevel(request.getParameter("level"));
		obj.setClasscode(classcode); // 테스트
		
		System.out.println(obj.toString());
		
		
		try {
			int ret = sService.insertSessionOne(obj);
			if(ret == 1) {
				response.sendRedirect("session.do?menu" + 1);
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("session.do?menu" + 1);
		}
	}

}
