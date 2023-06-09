package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01_insert")
public class Quiz01Insert extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		// db 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// db insert
		String insertQuery = "insert into `book_mark` (`name`, `url`)" 
		+ "values ('"
		+ name + "', '" + url + "')";
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ms.disconnect();
		
		// 유저 목록화면으로 이동(Redirect)
		response.sendRedirect("/lesson04/quiz01/siteList.jsp");
	}
}
