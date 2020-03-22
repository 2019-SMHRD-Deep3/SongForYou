package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MusicBucketDAO;

/**
 * Servlet implementation class Delete
 */
@WebServlet("/Delete")
public class Delete extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MusicBucketDAO dao = new MusicBucketDAO();
		HttpSession session = request.getSession();
		String[] id = request.getParameterValues("id");

		for(int i=0;i<id.length;i++) {
			System.out.println(id[i]);
			dao.delete(id[i]);
		}
		return ;

		
	}

}
