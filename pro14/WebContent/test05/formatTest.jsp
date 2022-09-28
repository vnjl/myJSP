<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>fmt의 number 태그를 이용한 숫자 포맷팅 예제.</h2>
	<c:set var="price" value="100000000" />
	<fmt:formatNumber value="${price}" type="number" var="priceNumber" />
	통화로 표현 시 :
	<fmt:formatNumber type="currency" currenySymbol="￦" value="${price}" groupingUsed="true" /> <br>
	<fmt:formatNumber value="${price}" type="percent" groupingUsed="false" /><br>
	일반 숫자로 표현 시 : ${priceNumber }<br>
	
	<h2>formatDate 예제</h2>
	<c:set var="now" value="<%=new Date() %>" />
	<fmt:formatDate value="${now}" type="date" dateStyle="full"/><br>
	<fmt:formatDate value="${now}" type="date" dateStyle="short"/><br>
	<fmt:formatDate value="${now}" type="time"/><br>
	<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/><br>
	
	<br><br>
	한국 현재 시간:
	<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/><br><br>
	
	<fmt:timeZone value="America/New York">
	뉴욕 현재시간: <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/><br>
	</fmt:timeZone>
</body>
</html>