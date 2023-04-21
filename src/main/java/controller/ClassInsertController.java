package controller;

import java.io.IOException;

import config.MyBatisContext;
import dto.Classproduct;
import dto.Localcate;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mapper.ClassMapper;
import service.ClassInsertService;
import service.ClassInsertServiceImpl;

@WebServlet(urlPatterns = { "/class/insert.do" })
public class ClassInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ClassInsertService mService = new ClassInsertServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String menu = request.getParameter("menu");
		System.out.println(menu);

		if (menu == null) {
			response.sendRedirect("insert.do?menu=1");
			return; // 메소드 종료. 아래쪽 실행 안됨.
		}

		request.getRequestDispatcher("/WEB-INF/class/menumain.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int menu = Integer.parseInt(request.getParameter("menu"));

		if (menu == 1) { // 카테고리 설정
			long code = Integer.getInteger(request.getParameter("code"));
			String localcate = (String)request.getParameter("localcate");
			long citycode = Integer.getInteger(request.getParameter("citycode"));
			
			Localcate cate = new Localcate();
			cate.setCode(code);
			cate.setLocalcate(localcate);
			cate.setCitycode(citycode);
			
			MyBatisContext.getSqlSession().getMapper(ClassMapper.class).insertClassOne();
			
		
		}

		else if (menu == 2) { //강사 소개

		}

		else if (menu == 3) { //클래스 소개

		}

		else if (menu == 4) { // 커리큘럼

		}
		
		else if(menu == 5) { // 가격
    		
    	}

		request.getRequestDispatcher("/WEB-INF/member/alert.jsp").forward(request, response);
	}

}
