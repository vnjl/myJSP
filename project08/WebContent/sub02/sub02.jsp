<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<p>개인 <img src="../../images/sign.png" alt=""/> 고객센터 <img src="../../images/sign.png" alt=""/> <img src="../../images/menu_3.png" alt="menuWay"/> <a href="#" class="common">일반게시판</a>
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
					<div id="infoText">
						<div class="infoSearch cl cf">
							<div class="pageInfo">Total 38건 1페이지</div>
						</div>
						<h3 id="boardH3">Q&A 리스트</h3>
					</div>
					<ul id="board">
						<li id="boardSubjectLi" class="cf">
							<div class="fl boardNum">번호</div>
							<div class="fl boardTitle">제목</div>
							<div class="boardRightBox fr">
								<div class="fl boardAuthor">글쓴이</div>
								<div class="fl boardView">조회수</div>
								<div class="fl boardDate">날짜</div>
							</div>
						</li>
						<li class="writeLi cf">
							<div class="boardTitleLine cf">
								<div class="fl boardNum fl"><span class="boardNotice">알림</span></div>		
									<div class="fl writeListTitle">
									서비스 관련 문의는 일반게시판이 아닌 Q&A 게시판에서 받고 있습니다.
									</div>
								<div class="writeListRightBox fr">
									<div class="fl writeListAuthor">고객센터</div>
									<div class="fl writeListView">1121</div>
									<div class="fl boardDate">05/29</div>
								</div>
							</div>
						</li>
						<li class="writeLi cf">
							<div class="boardTitleLine cf">
								<div class="fl boardNum">37</div>
								<div class="fl writeListTitle"><span class="newWrite">New!</span>신한은행 고객센터 서비스에 감동했습니다. ^__^</div>
								<div class="writeListRightBox fr">
									<div class="fl writeListAuthor">감동고객</div>
									<div class="fl writeListView">15</div>									
									<div class="fl boardDate">08/24</div>
								</div>
							</div>
						</li>
						<li class="writeLi cf">
							<div class="boardTitleLine cf">
								<div class="fl boardNum">36</div>		
								<div class="fl writeListTitle"><span class="newWrite">New!</span>급한데 서비스 연결이 잘 안 되네요. 실망했습니다.</div>
								<div class="writeListRightBox fr">
									<div class="fl writeListAuthor">실망한고객</div>
									<div class="fl writeListView">121</div>
									<div class="fl boardDate">08/24</div>
								</div>
							</div>
						</li>
						<li class="writeLi cf">
							<div class="boardTitleLine cf">
								<div class="fl boardNum">35</div>
								<div class="fl writeListTitle"><span class="newWrite">New!</span><img class="replyArrow" src="../images/reply.png" alt=""/>RE: 불편을 드려 죄송합니다. 서비스 연결 복구되었습니다.</div>
								<div class="writeListRightBox fr">
									<div class="fl writeListAuthor">고객센터</div>
									<div class="fl writeListView">135</div>									
									<div class="fl boardDate">08/24</div>
								</div>
							</div>
						</li>
						<li class="writeLi cf">
							<div class="boardTitleLine cf">
								<div class="fl boardNum">34</div>
								<div class="fl writeListTitle">친절한 상담원님 감사합니다.</div>
								<div class="writeListRightBox fr">
									<div class="fl writeListAuthor">칭찬고객</div>
									<div class="fl writeListView">32</div>
									<div class="fl boardDate">08/23</div>
								</div>
							</div>
						</li>
						<li class="writeLi cf">
							<div class="boardTitleLine cf">
								<div class="fl boardNum">33</div>
								<div class="fl writeListTitle"><img class="replyArrow" src="../images/reply.png" alt=""/>RE: 그 상담원님 저도 알아요. 정말 친절하세요.</div>
								<div class="writeListRightBox fr">
									<div class="fl writeListAuthor">칭찬하는고객</div>
									<div class="fl writeListView">7</div>
									<div class="fl boardDate">08/23</div>
								</div>
							</div>
						</li>
						<li class="writeLi cf">
							<div class="boardTitleLine cf">
								<div class="fl boardNum">32</div>
								<div class="fl writeListTitle">신한은행 서비스 참 좋고 홈페이지 정말 깔끔하고 멋있습니다. 좋은 서비스 끝까지 유지했으면 좋겠습니다. 신한은행 화이팅입니다.</div>
								<div class="writeListRightBox fr">
									<div class="fl writeListAuthor">응원하는고객</div>
									<div class="fl writeListView">5</div>
									<div class="fl boardDate">08/22</div>
								</div>
							</div>
						</li>
						<li class="writeLi cf">
							<div class="boardTitleLine cf">
								<div class="fl boardNum">31</div>
								<div class="fl writeListTitle">정말 편리한 서비스에 감탄하고 갑니다.</div>
								<div class="writeListRightBox fr">
									<div class="fl writeListAuthor">감탄한고객</div>
									<div class="fl writeListView">12</div>
									<div class="fl boardDate">08/21</div>
								</div>
							</div>
						</li>
						<li class="writeLi cf">
							<div class="boardTitleLine cf">
								<div class="fl boardNum">30</div>
								<div class="fl writeListTitle">신한은행 정말 좋아요~</div>
								<div class="writeListRightBox fr">
									<div class="fl writeListAuthor">좋아하는고객</div>
									<div class="fl writeListView">11</div>
									<div class="fl boardDate">08/21</div>
								</div>
							</div>
						</li>
						<li class="writeLi cf">
							<div class="boardTitleLine cf">
								<div class="fl boardNum">29</div>
								<div class="fl writeListTitle"><img class="replyArrow" src="../images/reply.png" alt=""/>RE: 저도 정말 신한은행 좋아합니다~</div>
								<div class="writeListRightBox fr">
									<div class="fl writeListAuthor">공감하는고객</div>
									<div class="fl writeListView">7</div>
									<div class="fl boardDate">08/22</div>
								</div>
							</div>
						</li>
						<div class="pageNumber cf">
							<ul class="pageNumberInner cf">
								<li class="cf">
									<a href="#" class="currentPage">1</a>
								</li>
								<li class="cf">
									<a href="#">2</a>
								</li>
								<li class="cf">
									<a href="#">3</a>
								</li>
								<li class="cf">
									<a href="#">4</a>
								</li>
								<li class="cf">
									<a href="#">5</a>
								</li>
								<li class="cf">
									<a href="#">6</a>
								</li>
								<li class="cf">
									<a href="#">7</a>
								</li>
							</ul>
						</div>
						<div class="writeBox">
							<a class="writeButton fr" type="button">글쓰기</a>
						</div>
					</ul>
			</div>
			</section>
		</div>
		</div>
	</section>
<!-- --------------------------------------------- -->
<%@ include file = "/footer.jsp" %>
</body>
</html>