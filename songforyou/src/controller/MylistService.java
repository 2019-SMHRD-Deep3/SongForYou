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

@WebServlet("/MylistService")
public class MylistService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDTO memberdto = new MemberDTO();
		MemberDAO memberdao = new MemberDAO();
		MemberDTO info = memberdao.login(memberdto);
		
		if(info!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("idnum", info.getIdnum());
			session.setAttribute("info", info);
			System.out.println(info.getIdnum());
		}else {
			response.sendRedirect("loginpage.jsp");
		}
	}

}
