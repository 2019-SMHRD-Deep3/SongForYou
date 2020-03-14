package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.CheckId;
import model.MemberDAO;
import model.MusicDAO;
import model.MusicDTO;

/**
 * Servlet implementation class idDuplChk
 */
@WebServlet("/MusicChk2.do")
public class MusicChk2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		
		String title = request.getParameter("title");
		System.out.println(title);
		
		MusicDAO dao = new MusicDAO();
		
		
		ArrayList<MusicDTO> list = dao.MusicChk(title); 
		
		Gson gson = new Gson();
		String value = gson.toJson(list); 
		System.out.println(value);
		response.getWriter().print(value); 
		
	}

}
