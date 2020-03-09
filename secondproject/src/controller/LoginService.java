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

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		MemberDTO dto = new MemberDTO(id,pw);
		MemberDAO dao = new MemberDAO();
		
		MemberDTO info = dao.login(dto);
		if(info!=null) {
			HttpSession session = request.getSession();
			
			session.setAttribute("id", info.getId());
			session.setAttribute("pw", info.getPw());
			session.setAttribute("info", info);
			System.out.println(info);
			response.sendRedirect("index.jsp");
			
		}else {
			response.sendRedirect("loginpage.jsp");
		}
		
		
		
	}

}
