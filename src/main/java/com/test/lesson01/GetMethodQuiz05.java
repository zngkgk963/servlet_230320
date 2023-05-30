package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class GetMethodQuiz05 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		int dan = Integer.parseInt(request.getParameter("number")); 
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>구구단</title></head><body><ul>");
		for (int i = 1; i < 10; i++) {
			out.print("<li>" + dan + " X " + i + " = " + (dan * i) + "</li>");
		}
//		out.print("<ul><li>1번째 리스트</li></ul>");
		out.print("</ul></body></html>");
	}
}
