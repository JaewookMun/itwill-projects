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
</style>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<body>
	<div class="wrap">
		<div class="container">
			<div class="member_table">
				<h1>회원목록</h1>
				<div class="up"></div>
				<table class="member_table">
					<tr>
						<th>번호</th>
						<th>아이디</th>
						<th>생년월일</th>
						<th>전화번호</th>
						<th>주소</th>
						<th>상태</th>
						<th>가입일</th>
					</tr>
				
				<c:forEach var="memberList" items="${memberList }">
					<tr>
						<td>${memberList.no }</td>
						<td>${memberList.id }</td>
						<td>${memberList.birth }</td>
						<td>${memberList.phone }</td>
						<td>${memberList.mainAddress }</td>
						<td>${memberList.status }</td>
						<td>${memberList.joinDate }</td>
					</tr>
				</c:forEach>
				</table>
			</div>
			<br>
			<br>
			<br>
			<div class="FAQList">
				<h1>FAQ 목록</h1>
				<div class="up"></div>
				<table class="FAQ_table">
					<tr>
						<th>번호</th>
						<th>이름</th>
						<th>아이디</th>
						<th>내용</th>
						<th>작성일</th>
					</tr>
				<c:forEach var="FaqQuestionList" items="${FaqQuestionList }">
					<tr>
						<td>${FaqQuestionList.num }</td>
						<td>${FaqQuestionList.name }</td>
						<td>${FaqQuestionList.id }</td>
						<td>${FaqQuestionList.content }</td>
						<td>${FaqQuestionList.recent }</td>
					</tr>
				</c:forEach>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
