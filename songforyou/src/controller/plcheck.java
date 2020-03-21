package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.MusicDAO;
import model.MusicDTO;

@WebServlet("/plcheck.do")
public class plcheck extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		
		String title = request.getParameter("title");
		String singer = request.getParameter("singer");
		System.out.println(title);
		System.out.println(singer);
		
		
		MusicDTO dto = new MusicDTO(singer, title);
		MusicDAO dao = new MusicDAO();
		String url = dao.plcheck(dto);
		System.out.println(url);

		Gson gson = new Gson(); 
		String value = gson.toJson(url);
		System.out.println(value); 
		response.getWriter().print(value);

	}

}
