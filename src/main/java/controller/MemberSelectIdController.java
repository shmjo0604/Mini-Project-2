package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mapper.MemberMapper;

import java.io.IOException;

import config.MyBatisContext;
import dto.Member;

@WebServlet(urlPatterns = { "/member/selectid.do" })
@MultipartConfig
public class MemberSelectIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id =request.getParameter("id");
		request.setAttribute("id", id);
		
		request.getRequestDispatcher("/WEB-INF/member/member_selectid.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Member obj = new Member();
		obj.setName(request.getParameter("name"));
		obj.setEmail(request.getParameter("email"));
		obj.setPhone(request.getParameter("phone"));

		Member ret = MyBatisContext.getSqlSession().getMapper(MemberMapper.class).selectMemberId(obj);

		if (ret != null) {
			HttpSession httpsession = request.getSession();
			httpsession.setAttribute("name", ret.getName());
			httpsession.setAttribute("email", ret.getEmail());
			httpsession.setAttribute("phone", ret.getPhone());

			String url = (String) httpsession.getAttribute("url");
			if (url == null) {

				request.setAttribute("message", "인증에 성공하였습니다.");
				request.setAttribute("url", " ");
				request.getRequestDispatcher("/WEB-INF/member/alert.jsp").forward(request, response);
			} else {
				response.sendRedirect(url);
			}
			return;
		}
				request.setAttribute("message", "인증에 성공하였습니다.");
				request.setAttribute("url", " ");
				request.getRequestDispatcher("/WEB-INF/member/alert.jsp").forward(request, response);
	}

}
