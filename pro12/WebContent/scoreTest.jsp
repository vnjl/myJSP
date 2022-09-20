<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int score = Integer.parseInt(request.getParameter("score"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점수 출력창</title>
</head>
<body>
	<h1>시험 점수는 <%= score %> 점입니다.</h1><br>
<%
	if(score>=90 && score>100){
%>
	<h1>A학점입니다.</h1>
<%
	}else if(score>=80){
%>
	<h1>D학점입니다.</h1>
<%
	}else if(score>=70){
%>
	<h1>C학점입니다.</h1>
<%
	}else if(score>=60){
%>
	<h1>D학점입니다.</h1>
<%	
	}else{
%>
	<h1>F학점입니다.</h1>
<%
	}
%>
</body>
</html>