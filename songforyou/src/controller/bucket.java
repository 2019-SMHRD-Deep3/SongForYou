package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.MusicBucketDAO;
import model.MusicBucketDTO;
import model.MusicDTO;

@WebServlet("/bucket.do")
public class bucket extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		
		int idnum = Integer.parseInt(request.getParameter("idnum"));
		String m = request.getParameter("m");
		MusicBucketDAO dao = new MusicBucketDAO();
		
		int len = m.length();
		
		String[] value = m.split(",");
	
		int list = 0;	
		
		
		  for (int i = 0; i < value.length; i++) {
		 
		  response.getWriter().print("success"); 
		  
		  list = dao.bucketlist(idnum,value[i]); 
		  }
		  
		  
		
		 
		
		/*
		 * Gson gson = new Gson(); String value = gson.toJson(list);
		 * response.getWriter().print(value);
		 */
		 
		
		
	}

}