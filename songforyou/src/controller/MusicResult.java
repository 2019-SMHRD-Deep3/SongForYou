package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.MusicDTO;
import model.MusicResultDAO;

/**
 * Servlet implementation class MusicResult
 */
@WebServlet("/MusicResult.do")
public class MusicResult extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			response.setContentType("application/json");
			String search = request.getParameter("title");
			
			String[] result = search.split("-"); 
			String title = result[0];
			String singer = result[1];
			
			title = title.trim();
			singer = singer.substring(1);
			
			
			MusicDTO dto = new MusicDTO(singer, title);
			MusicResultDAO dao = new MusicResultDAO();
			
			String resultS = dao.searchR(dto);
			
			String[] finalresult = resultS.split(",");
			for (int i = 0; i < finalresult.length; i++) {
				System.out.println(finalresult[i]);
			}
			
			Gson gson = new Gson();
			String value = gson.toJson(finalresult); 
			System.out.println(value);
			response.getWriter().print(value);
			
			
			
			
	}

}
