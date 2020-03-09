package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;

/**
 * Servlet implementation class MypageService
 */
@WebServlet("/MypageService")
public class MypageService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		
		String id = info.getId();
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String sex1 = request.getParameter("sex");
		System.out.println(sex1);
		System.out.println(id);
		int sex = 0;
		if("³²".equals(sex1)) {
			sex = 1;
		}else {
			sex=2;
		}
		System.out.println(sex);
		MemberDTO dto = new MemberDTO(id,pw,name,age,sex);
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.update(dto);
		if(cnt>0) {
			response.sendRedirect("index.jsp");
		}else {
			response.sendRedirect("mypage.jsp");
		}
	}

}
