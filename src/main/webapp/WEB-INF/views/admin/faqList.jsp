<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
h1 {
	font-size: 24px;
	line-height: 30px;
	font-weight: 700;
	position: relative;
	letter-spacing: -0.4px;
	color: #08b2f5;
	margin-bottom: 10px;
}

.up {
	width: 30px;
	height: 3px;
	background: #08b2f5;
	position: relative;
	display: inline-block;
	margin-bottom: 10px;
}

table {
	width: 100%;
	border: 1px solid #ddd;
	border-collapse: collapse;
}

th {
	text-align: center;
	font-size: 15px;
	font-weight: 300;
	line-height: 24px;
	padding: 14px 24px;
	vertical-align: middle;
	font-color: black;
	background-color: #08b2f5;
	border: 1px solid #ddd;
}

td, th {
	wight: 190px;
	text-align: center;
	font-size: 10px;
	font-weight: 300;
	line-height: 24px;
	padding: 14px 24px;
	vertical-align: middle;
}

#blockArea {
	text-align: center;
	margin-top: 20px;
}

#blockArea ul {
	display: inline-block;
}

#blockArea li {
	float: left;
	margin: 0 10px;
}

#blockArea li:hover {
	color: #08b2f5;
}

.selected-page{
	color: #08b2f5;
	font-weight: 500;
}

.th-row a:hover {
	color: #00BFFF;
}

.Faq_table th {
	font-size: 18px;
}

.Faq_table td {
	font-size: 15px;
}

</style>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<body>
	<div class="wrap">
		<div class="container">
			<div class="member_table">
				<h1>Faq목록</h1>
				<div class="up"></div>
				<table class="Faq_table">
					<tr>
						<th>번호</th>
						<th>아이디</th>
						<th>이름</th>
						<th>내용</th>
					</tr>
				<c:forEach var="i" begin="0" end="${fn:length(faqList)-1 }" step="1">
					<tr>
						<td>${faqList[i].num }</td>
						<td>${faqList[i].id }</td>
						<td>${faqList[i].name }</td>
						<td>${faqList[i].content }</td>
					</tr>
				</c:forEach>
				</table>
			</div>
		<div id="blockArea">
			<ul>
				<c:if test="${pager.pageNum != 1 }">
					<li><a href="${pageContext.request.contextPath }/faqList/${pager.pageNum-1}">다음</a></li>
				</c:if>
			
				<c:forEach var="i" begin="${pager.startPage }" end="${pager.endPage }" step="1">
					<c:choose>
						<c:when test="${pager.pageNum==i }">
							<li class="selected-page">${i }</li>
						</c:when>
						<c:otherwise>
							<li><a href="${pageContext.request.contextPath }/faqList/${i}">${i }</a></li>
						</c:otherwise>				
					</c:choose>
				</c:forEach>
			
				<c:if test="${pager.pageNum != pager.endPage }">
					<li><a href="${pageContext.request.contextPath }/faqList/${pager.pageNum+1}">이전</a></li>
				</c:if>
			</ul>
		</div>
		</div>
	</div>
</body>
</html>
