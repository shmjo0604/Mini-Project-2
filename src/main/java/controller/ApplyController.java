package controller;

import java.io.IOException;
import java.util.List;

import config.MyBatisContext;
import dto.Apply;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mapper.ApplyMapper;


@WebServlet(urlPatterns = {"/apply.do"})
public class ApplyController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("./WEB-INF/apply/apply.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
//		request.ge 

		response.sendRedirect("applytatus.do");
	}
}
