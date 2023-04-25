package controller;

import java.io.IOException;

import config.MyBatisContext;
import dto.Apply;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mapper.ApplyMapper;

@WebServlet(urlPatterns = { "/apply/apply.do" })
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

		ApplyMapper mapper = MyBatisContext.getSqlSession().getMapper(ApplyMapper.class);
		int ret= mapper.insertApply(obj);
		System.out.println(ret);
		
	}
}
