<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<!-- core 태그 라이브러리를 사용하기 위해서 반드시 선언해야 되는 부분 -->    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
	request.setCharacterEncoding("UTF-8");
%>  
<%-- <c:set> 태그를 이용해서 변수를 선언 value 속성에는 표현언어를 사용해서 초기화할 수 있다 --%>
<c:set  var="id"  value="hong"  scope="page" />
<c:set  var="pwd"  value="1234"  scope="page" />
<c:set  var="name"  value="${'홍길동'}"  scope="page" />
<c:set  var="age"  value="${22}"  scope="page" />
<c:set  var="height"  value="${177}"  scope="page" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 정보 출력창</title>
</head>
<body>
<table  align="center"  border=1  >
   <tr align="center"  bgcolor="lightgreen" >
      <td width="7%" ><b>아이디</b></td>
      <td width="7%" ><b>비밀번호</b></td>
      <td width="7%" ><b>이름</b></td>
      <td width="7%"><b>나이</b></td>
      <td width="7%" ><b>키</b></td>
   </tr>
   <!-- 표현언어로 변수에 바로 접근하여 값을 출력 -->
   <tr align="center">
      <td>${id}</td>
      <td>${pwd}</td>
      <td>${name}</td>
      <td>${age}</td>
      <td>${height}</td>
   </tr>
</table>
</body>
</html>
















