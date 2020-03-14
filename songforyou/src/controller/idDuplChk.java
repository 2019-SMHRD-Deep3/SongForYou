package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.CheckId;
import model.MemberDAO;

/**
 * Servlet implementation class idDuplChk
 */
@WebServlet("/idDuplChk.do")
public class idDuplChk extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.checkId(id);
		
		boolean g = false; 
		
		if(cnt ==1) {
			g = true;
		}else {
			g = false;
		}
	
//		System.out.println(cnt);
		
		CheckId checkId = new CheckId(g);
		Gson gson = new Gson();
		
		
		String value = gson.toJson(checkId);
		response.getWriter().print(value);
		
	}

}
