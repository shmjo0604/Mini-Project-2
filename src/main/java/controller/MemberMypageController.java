package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mapper.MemberMapper;

import java.io.IOException;

import config.Hash;
import config.MyBatisContext;
import dto.Member;

@WebServlet(urlPatterns = {"/member/mypage.do"})
public class MemberMypageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String menu = request.getParameter("menu");
		if(menu == null) {
			response.sendRedirect("mypage.do?menu=1");
			return;
		}
		String id =(String)request.getSession().getAttribute("id");
		if(Integer.parseInt(menu) == 1) {
			Member obj = MyBatisContext.getSqlSession().getMapper(MemberMapper.class).selectMemberOne(id);
			request.setAttribute("obj",obj);
			
		}
		//클래스 등록관리
		else if(Integer.parseInt(menu)==2) {
			
			
		}
		//리뷰내역관리
		else if(Integer.parseInt(menu)==5) {
			
			
		}
		request.getRequestDispatcher("/WEB-INF/member/member_mypage.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//회원정보수정
		int menu = Integer.parseInt(request.getParameter("menu"));
		
		
		if(menu == 1) {
			String id = (String) request.getSession().getAttribute("id");
			String name = (String) request.getSession().getAttribute("name");
			String email =(String) request.getSession().getAttribute("email");
			String phone =(String) request.getSession().getAttribute("phone");
			Member obj = new Member();
			obj.setId(id);
			obj.setName(name);
			obj.setEmail(email);
			obj.setPhone(phone);
			
			
			int ret =MyBatisContext.getSqlSession().getMapper(MemberMapper.class)
					.updateMemberOne(obj);
		
			if(ret == 1 ) {
			
				response.sendRedirect("mypage.do?menu=" + menu);
			}else {
				
			}	return;
			
				
			
		}else if (menu == 2) {
			
			
		}else if (menu == 3) {
			
			
		}else if (menu == 4) {
			String hashPw =Hash.hashPw((String)request.getSession().getAttribute("id"), request.getParameter("password"));
			String hashNPw =Hash.hashPw((String) request.getSession().getAttribute("id"),request.getParameter("newpassword"));
			String hashNPw1 =Hash.hashPw((String) request.getSession().getAttribute("id"),request.getParameter("newpassword1"));
			Member obj = new Member();
			obj.setId((String) request.getSession().getAttribute("id"));
			obj.setPassword(hashPw);
			obj.setNewpassword(hashNPw);
			obj.setNewpassword(hashNPw1);
			int ret = MyBatisContext.getSqlSession().getMapper(MemberMapper.class).updateMemberPassword(obj);
			System.out.println(ret);			
			if(ret == 1 ) {
				
				response.sendRedirect("mypage.do?menu=" + menu);
			
			}else {
				
			}	return;
			
				
		}else if (menu ==5 ) {
			
			
		}
		//회원탈퇴
		else if (menu == 6) {
			
			HttpSession httpsession = request.getSession();
			String id =(String)httpsession.getAttribute("id");
			String pw =request.getParameter("password");
			String pwHash =Hash.hashPw(id, pw);
			
			
			Member obj = new Member();
			obj.setId(id);
			obj.setPassword(pwHash);

			
			
			int ret = MyBatisContext.getSqlSession().getMapper(MemberMapper.class).deleteMemberOne(obj);
		
			if (ret == 1 ) {
				httpsession.invalidate();
				response.sendRedirect("home.do");
			}
			
			
		}
		
	}

}
