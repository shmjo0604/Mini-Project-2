package controller;

import java.io.IOException;
import java.util.List;

import config.MyBatisContext;
import dto.Activitycate;
import dto.Citycate;
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
		
		if(Integer.parseInt(menu) == 1) {
			ClassMapper mapper = MyBatisContext.getSqlSession().getMapper(ClassMapper.class);
			List<Citycate> list = mapper.selectCitycateList();
			List<Activitycate> list1 = mapper.selectActivitycateList();
			
			request.setAttribute("list" , list);
			request.setAttribute("list1", list1);
		}
		
		if(Integer.parseInt(menu)== 2) {
			
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
			
			Localcate obj = new Localcate();
			obj.setCode(code);
			obj.setLocalcate(localcate);
			obj.setCitycode(citycode);
			
			int ret =MyBatisContext.getSqlSession().getMapper(ClassMapper.class).insertClassOne(obj);
			
			if(ret==1) {
				//response.sendRedirect("mypage.do?menu=5");
				request.setAttribute("message", "카테고리 선택이 완료되었습니다.");
				request.setAttribute("url", "mypage.do?menu=1");
				request.getRequestDispatcher("/WEB-INF/member/alert.jsp").forward(request, response);
			}
			else {
				//response.sendRedirect("mypage.do?menu=5");
				request.setAttribute("message", "카테고리 선택이 실패되었습니다.");
				request.setAttribute("url", "mypage.do?menu=1");
				request.getRequestDispatcher("/WEB-INF/member/alert.jsp").forward(request, response);
			}
		
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
