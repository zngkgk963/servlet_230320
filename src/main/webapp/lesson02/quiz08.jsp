<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교포문고</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<%
	List<Map<String, Object>> list = new ArrayList<>();
	Map<String, Object> map = new HashMap<String, Object>() {
		{ 
			put("id", 1000);
			put("title", "아몬드"); 
			put("author", "손원평"); 
			put("publisher", "창비");
			put("image", "http://image.kyobobook.co.kr/images/book/xlarge/267/x9788936434267.jpg");
		} 
	};
	list.add(map);
	
	map = new HashMap<String, Object>() {
		{ 
			put("id", 1001);
			put("title", "사피엔스"); 
			put("author", "유발 하라리"); 
			put("publisher", "김영사");
			put("image", "http://image.kyobobook.co.kr/images/book/xlarge/464/x9788934972464.jpg");
		} 
	};
	list.add(map);
	
	map = new HashMap<String, Object>() {
		{ 
			put("id", 1002);
			put("title", "코스모스"); 
			put("author", "칼 세이건"); 
			put("publisher", "사이언스북");
			put("image", "http://image.kyobobook.co.kr/images/book/xlarge/892/x9788983711892.jpg");
		} 
	};
	list.add(map);
	
	map = new HashMap<String, Object>() {
		{ 
			put("id", 1003);
			put("title", "나미야 잡화점의 기적"); 
			put("author", "히가시노 게이고"); 
			put("publisher", "현대문학");
			put("image", "http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg");
		} 
	};
	list.add(map);
%>
</head>
<body>
	<div class="container">
		<h1 class="text-center mt-4">책 목록</h1>
		<table class="table text-center">
			<thead>
				<%-- row class를 설정하면 12칸 기준으로 영역을 잡을 수 있다. --%>
				<tr class="row"> 
					<th class="col-1">id</th>
					<th class="col-2">표지</th>
					<th class="col-9">제목</th>
				</tr>
			</thead>
			<tbody>
			<%
				for (Map<String, Object> item : list) {
			%>	
				<tr class="row">
					<td class="col-1"><%=item.get("id") %></td>
					<td class="col-2"><img src="<%=item.get("image") %>" width="50" alt="표지"></td>
					<td class="col-9"><a href="/lesson02/quiz08_1.jsp?id=<%=item.get("id") %>" class="text-decoration-none"><%=item.get("title") %></a></td>
				</tr>
			<%
				}
			%>
			</tbody>
		</table>
	</div>
</body>
</html>