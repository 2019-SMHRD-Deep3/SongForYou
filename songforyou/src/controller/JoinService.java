package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberDTO;
@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String sex1 = request.getParameter("sex");
		System.out.println(sex1);
		int sex = 0;
		if("³²".equals(sex1)) {
			sex = 1;
		}else {
			sex=2;
		}
		MemberDTO dto = new MemberDTO(id,pw,name,age,sex);
		MemberDAO dao = new MemberDAO();
		
	
		
		PrintWriter out = response.getWriter();
		
		   
		int cnt = dao.Join(dto);
		if(cnt>0) {
		
			response.sendRedirect("index.jsp");
		}else {
		
		
		}
		
	}

}
