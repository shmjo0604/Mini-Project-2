package controller;

import java.io.IOException;

import config.MyBatisContext;
import dto.Apply;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mapper.ApplyMapper;
import service.ApplyService;
import service.ApplyServiceImpl;

@WebServlet(urlPatterns = { "/apply.do" })
public class ApplyController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/apply/apply.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		long per= Long.parseLong(request.getParameter("person"));//유효성 검사때문에 넣은것 값 확인 할때 지워햐함
		String id= request.getParameter("memberid");//유효성 검사때문에 넣은것 값 확인 할때 지워햐함
		long session= Long.parseLong(request.getParameter("session"));//유효성 검사때문에 넣은것 값 확인 할때 지워햐함
		// id값을 session으로 꺼내는것 request.getsession  id
		
		Apply obj = new Apply();
		obj.setPerson(per);
		obj.setMemberid(id);
		obj.setSessionno(session);
		
		
		System.out.println(obj.toString());

//		Apply obj = new Apply();
//		obj.setPerson(Long.parseLong(request.getParameter("person")));
//		obj.setMemberid(request.getParameter("test2"));
//		obj.setSessionno(Long.parseLong(request.getParameter("13")));
//		System.out.println(obj.toString());

		ApplyService service = new ApplyServiceImpl();
		int ret= service.insertApply(obj);
		System.out.println(ret);
					
//			HttpSession httpSession = request.getSession();
		
//			
//			String person = request.getParameter("person");
//			String memberid = (String) request.getSession().getAttribute("memberid");
//			String sessionno = request.getParameter("sessionno");
			
//			String url = (String) httpSession.getAttribute("url");
//			System.out.println("apply.do => " + url);
			
		if(ret == 1) {
			response.sendRedirect("applytatus.do");
			// 절대경로 ->  src="<${pageContext.request.contextPath}member/mypage.do>"
		}
		else {
//			response.sendRedirect(url);
			response.sendRedirect(request.getContextPath() + "/apply.do");
		}		

	}
}
				
		
		
	