package controller;

import java.io.IOException;
import java.util.List;

import config.Hash;
import config.MyBatisContext;
import dto.Member;
import dto.PurchaseView;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mapper.ClassMapper;
import mapper.MemberMapper;
import mapper.PurchaseMapper;
import service.ClassInsertService;
import service.ClassInsertServiceImpl;

@WebServlet(urlPatterns = {"/class/insert.do"})
public class ClassInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private ClassInsertService mService = new ClassInsertServiceImpl();
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String menu = request.getParameter("menu");
    	System.out.println(menu);
    	
    	
    	if(menu == null ) {
    		response.sendRedirect("insert.do?menu=1");
    		return; // 메소드 종료. 아래쪽 실행 안됨.
    	}
    	
    	// 세션에서 아이디 꺼내기
    	String id = (String) request.getSession().getAttribute("id");
    	if(Integer.parseInt(menu) == 1 ) { //정보변경시
    		Class obj = MyBatisContext.getSqlSession().getMapper(ClassMapper.class).selectClassOne(classcode);
    		// 아이디를 전송해서 이름과 나이를 받아옴.
    		request.setAttribute("obj", obj);
    	}
    	
    	request.getRequestDispatcher("/WEB-INF/class/menu1.jsp").forward(request, response);
    }
    	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	int menu = Integer.parseInt(request.getParameter("menu"));
    	String id = (String) request.getSession().getAttribute("id");
    	
    	
    	if(menu ==1 ) { // 카테고리 설정
    		
    		//mapper 호출 후 변경하기
    		Class obj = new Class();
    		obj.setId(id);
    		obj.setName(request.getParameter("name"));
    		obj.setAge(Integer.parseInt(request.getParameter("age")) );
    		
    		int ret = MyBatisContext.getSqlSession().getMapper(MemberMapper.class).updateMember(obj);
    		System.out.println(ret);
    		
    		request.setAttribute("message", "정보수정이 완료되었습니다.");
    		request.setAttribute("url", "mypage.do?menu=" + menu);
    		request.getRequestDispatcher("/WEB-INF/member/alert.jsp").forward(request, response);
    	}
    	
    	else if(menu==2) {
    		String pw =Hash.hashPW(id, request.getParameter("pw"));
    		String pw1 =Hash.hashPW(id, request.getParameter("pw1"));
    		
    		Member obj = new Member();
    		obj.setId(id);
    		obj.setPassword(pw);
    		obj.setNewpassword(pw1);

    		int ret =MyBatisContext.getSqlSession().getMapper(MemberMapper.class).updatePwMember(obj);
    		System.out.println(ret);
    		if(ret==1) {
    			request.setAttribute("message", "비밀번호 수정이 완료되었습니다.");
    			request.setAttribute("url", "mypage.do?menu=" + menu);
    		}
    		else {
    			request.setAttribute("message", "수정이 실패되였습니다.");
    			request.setAttribute("url", "mypage.do?menu="+menu);
    		}
    		request.getRequestDispatcher("/WEB-INF/member/alert.jsp").forward(request, response);
    	}
    		
    	else if(menu==3) {
    		String pw = Hash.hashPW(id, request.getParameter("pw"));
    		
    		Member obj = new Member();
    		obj.setId(id);
    		obj.setPassword(pw);
    		
    		int ret = MyBatisContext.getSqlSession().getMapper(MemberMapper.class).deleteMemberOne(obj);
    		System.out.println(ret);
    		if(ret==1) {
    			
    			HttpSession httpsession = request.getSession();
    			httpsession.invalidate();
    			
    			request.setAttribute("message", "회원탈퇴가 완료되었습니다.");
    			request.setAttribute("url", "mypage.do?menu=" + menu);
    		}
    		else {
    			request.setAttribute("message", "탈퇴가 실패되였습니다.");
    			request.setAttribute("url", "mypage.do?menu="+menu);
    		}
    		request.getRequestDispatcher("/WEB-INF/member/alert.jsp").forward(request, response);
    		
    	}
    	
    	//request.getRequestDispatcher("/WEB-INF/member/customer_mypage.jsp").forward(request, response);
    }
    
}
