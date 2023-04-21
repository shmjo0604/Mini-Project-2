package controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.ApplyService;
import service.ApplyStatusService;
import service.impl.ApplyStatusServiceImpl;

@WebServlet
public class ApplyStatusController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ApplyStatusService applyStatusService = new ApplyStatusServiceImpl(); //객체를 만들고

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		applyStatusService.insertApplyTatus(null); // 파란색으로 된것이 변수라는 의미

	}
}
