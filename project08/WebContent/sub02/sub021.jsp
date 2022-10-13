<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set  var="articlesList"  value="${articlesMap.articlesList}" />
<c:set  var="totArticles"  value="${articlesMap.totArticles}" />
<c:set  var="section"  value="${articlesMap.section}" />
<c:set  var="pageNum"  value="${articlesMap.pageNum}" />

<%
  request.setCharacterEncoding("UTF-8");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
	<link rel="stylesheet" href="css/sub02.css"/>
	<link rel="stylesheet" href="../css/common.css"/>
	<script src="../js/jquery-1.7.1.min.js"></script>
	<script src="js/sub02.js"></script>
</head>
<body>
<%@ include file = "/header.jsp" %>
<!-- --------------------------------------------- -->
	<section id="section">
		<div id="way">
			<div class="wayText">
				<p>개인 <img src="../images/sign.PNG" alt=""/> 고객센터 <img src="../images/sign.PNG" alt=""/> <img src="../images/menu_3.PNG" alt="menuWay"/> <a href="#" class="common">일반게시판</a>
				</p>
			</div>
		</div>
		<div id="title">
			<div class="accountTitleBox cf">
				<div id="titleText" class="fl"><span class="boardtitleText">일반 게시판</span></div>
			</div>	
		</div>
	<div id="boardTotal">
		<div class="infoSearch cf">
			<div class="boardSearchBox fr">
				<h3 id="boardH3">일반게시판 검색</h3>
				<form>							
					<select name="search" class="searchSelect">
						<option value="제목">제목</option>
						<option value="내용">내용</option>
						<option value="글쓴이">제목+내용</option>
					</select>
					<input class="searchInput" type="text"/>
					<button class="searchSubmit"><img src="../images/search_icon.png" width="18" alt=""/></button>
				</form>
			</div>	
		</div>
	  <ul id="boardSubjectLi">
	     <li class="fl">글번호</li>
	     <li class="fl">제목</li>
		 <li class="fl">작성자</li>
	     <li class="fl">작성일</li>
	  </ul>
	<c:choose>
	  <c:when test="${empty articlesList}" >
	    <ul>
	      <li>
	         <p align="center" class="cb">
	            <b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
	        </p>
	      </li>  
	    </ul>
	  </c:when>
	  <c:when test="${!empty articlesList}" >
	    <c:forEach  var="article" items="${articlesList }" varStatus="articleNum" >
	     <ul>
			<li class="fl boardNum fl">${articleNum.count}</li>
			<li class="fl writeListAuthor">${article.id }</li>
			<li>
				<span style="padding-right:30px"></span>    
			   <c:choose>
				  <c:when test='${article.level > 1 }'>  
					 <c:forEach begin="1" end="${article.level }" step="1">
						 <span style="padding-left:10px"></span> 
					 </c:forEach>
					 <span style="font-size:12px;">[답변]</span>
						   <a class='cls1' href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
					  </c:when>
					  <c:otherwise>
						<a class='cls1' href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title }</a>
					</c:otherwise>
				</c:choose>
			</li>
		  <li class="fl boardDate"><fmt:formatDate value="${article.writeDate}" /></li> 
		</ul>
	    </c:forEach>
	    </c:when>
	    </c:choose>
	 <c:if test="${totArticles != null }" >
	      <c:choose>
	        <c:when test="${totArticles >100 }">  <!-- 글 개수가 100 초과인경우 -->
		      <c:forEach   var="page" begin="1" end="10" step="1" >
		         <c:if test="${section >1 && page==1 }">
		          <a class="no-uline" href="${contextPath }/board/listArticles.do?section=${section-1}&pageNum=${(section-1)*10 +1 }">&nbsp; pre </a>
		         </c:if>
		          <a class="no-uline" href="${contextPath }/board/listArticles.do?section=${section}&pageNum=${page}">${(section-1)*10 +page } </a>
		         <c:if test="${page ==10 }">
		          <a class="no-uline" href="${contextPath }/board/listArticles.do?section=${section+1}&pageNum=${section*10+1}">&nbsp; next</a>
		         </c:if>
		      </c:forEach>
	        </c:when>
	        <c:when test="${totArticles ==100 }" >  <!--등록된 글 개수가 100개인경우  -->
		      <c:forEach   var="page" begin="1" end="10" step="1" >
		        <a class="no-uline"  href="#">${page } </a>
		      </c:forEach>
	        </c:when>
	        
	        <c:when test="${totArticles< 100 }" >   <!--등록된 글 개수가 100개 미만인 경우  -->
		      <c:forEach   var="page" begin="1" end="${totArticles/10 +1}" step="1" >
		         <c:choose>
		           <c:when test="${page==pageNum }">
		            <a class="sel-page"  href="${contextPath }/board/listArticles.do?section=${section}&pageNum=${page}">${page } </a>
		          </c:when>
		          <c:otherwise>
		            <a class="no-uline"  href="${contextPath }/board/listArticles.do?section=${section}&pageNum=${page}">${page } </a>
		          </c:otherwise>
		        </c:choose>
		      </c:forEach>
	        </c:when>
	      </c:choose>
	    </c:if>
	</div>    
	<br><br>
	<a  class="cls1" href="${contextPath}/board/articleForm.do"><b>글쓰기</b></a>
	</section>
<!-- --------------------------------------------- -->
<%@ include file = "/footer.jsp" %>
</body>
</html>