<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 요소</title>
</head>
<body>
	<%!
	
		// 1) 합계
		// input(n) , output(합계)
		public int add(int n) {
			int sum = 0;
			for(int i = 1; i <= n; i++) {
				sum += i;
			}
			return sum;
	}
	%>
	
	<%
		int sum = 0;
		int[] scores = {80, 90, 100, 95, 80};
		for (int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
		double avg = sum / (double)scores.length;
		
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score = 0;
		for (int i = 0; i < scoreList.size(); i++) {
			if (scoreList.get(i).equals("O")) {
				score += 10;
			}
		}
		
		String birthDay = "20010820";
		String year = birthDay.substring(0, 4);
		
		int age = Integer.valueOf(year);
		int result = 2023 - age + 1;
	%>
	
	<h1>1부터 50까지의 합은 <%= add(50) %></h1>
	<br>
	<h1>평균점수는 <%= avg %> 입니다.</h1>
	<br>
	<h1>채점 결과는 <%= score %> 점 입니다.</h1>
	<br>
	<h1><%= birthDay %>의 나이는 <%= result %>세 입니다.</h1>
	
	
	
	
	
</body>
</html>