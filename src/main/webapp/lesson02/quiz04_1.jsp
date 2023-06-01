<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>

	<%
		// inch = cm / 2.54
		// yard = cm /91.44
		// feet = cm /30.48
		// m = cm / 100
		int cm = Integer.valueOf(request.getParameter("length"));
	
		String[] typeArr = request.getParameterValues("type");
		
		double inch = cm / 2.54;
		double yard = cm /91.44;
		double feet = cm /30.48;
		double m = cm / 100.0;
		
	%>
	
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h2><%= cm %>cm</h2>
		<hr>
		<h2>
			<%
				if (typeArr != null) {
					for (String type: typeArr) {
						if (type.equals("인치")) {
							out.print(inch + "in<br>");
						} else if (type.equals("야드")) {
							out.print(yard + "yd<br>");
						} else if (type.equals("피트")) {
							out.print(feet + "ft<br>");
						} else if (type.equals("미터")) {
							out.print(m + "m");
						}
					}
				}
			%>
		</h2>
	</div>
</body>
</html>