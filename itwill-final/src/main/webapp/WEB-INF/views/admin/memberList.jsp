<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
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

#insertDiv, #updateDiv {
	width: 240px;
	height: 80px;
	border: 2px solid black;
	background-color: gray;
	position: absolute;
	top: 50%;
	left: 50%;
	margin-top: -40px;
	margin-left: -120px;
	padding: 5px;
	z-index: 100;
	display: none;
}

.commu_foot {
	margin-top: 30px;
	position: relative;
	margin: 0 auto;
}

.prev_arw {
	background: url('../images/prev_arw.png') no-repeat center center;
}

.next_arw {
	background: url('../images/next_arw.png') no-repeat center center;
}

.first_arw {
	background: url('../images/first_arw.png') no-repeat center center;
}

.end_arw {
	background: url('../images/end_arw.png') no-repeat center center;
}

.pagination {
	top: 30px;
	position: relative;
	display: inline-block;
	left: 50%;
	transform: translate(-50%, 0%);
}

.pagination span {
	float: left;
	width: 34px;
	height: 34px;
	line-height: 32px;
	text-align: center;
	font-size: 15px;
	font-weight: 300;
	border-radius: 50%;
	color: #555;
	transition: background-color .3s;
	border: 0px solid #ddd;
	margin: 0 4px;
	cursor: pointer;
}

.pagination span.active {
	background-color: #08b2f5;
	color: white;
	border: 1px solid #08b2f5;
}

.pagination span:hover:not(.active) {
	color: #333;
	background-color: #ddd;
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
</style>
<script type="text/javascript">
function memberRemove(id) {
	if (confirm("삭제하시겠습니까?")) {
		location.href='${pageContext.request.contextPath}/removeMember?id='+id;
	}
}
</script>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<body>
	<div class="wrap">
		<div class="container">
			<%--회원 목록을 출력하는 영역 --%>
			<div id="memberListDiv"></div>
			<%-- 페이지 번호를 출력하는 영역 --%>
			<div id="pageNumDiv"></div>
			<div class="member_table">
				<h1>회원목록</h1>
				<div class="up"></div>
				<table class="Faq_table">
					<tr>
						<th>번호</th>
						<th>아이디</th>
						<th>생년월일</th>
						<th>전화번호</th>
						<th>주소</th>
						<th>상태</th>
						<th>가입일</th>
						<th></th>
					</tr>
					<c:forEach var="memberList" items="${memberList }">
						<tr>
							<c:if test="${memberList.status ne 0 }">
								<td>${memberList.no }</td>
								<td>${memberList.id }</td>
								<td>${memberList.birth }</td>
								<td>${memberList.phone }</td>
								<td>${memberList.mainAddress }</td>
								<td>${memberList.status }</td>
								<td>${memberList.joinDate }</td>
								<td>
									<input type="button" value="수정" onClick="location.href='${pageContext.request.contextPath}/modifyMember?id=${memberList.id }';">
									<input type="button" value="삭제"
									onClick="memberRemove('${memberList.id}');">
								</td>
							</c:if>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div id="blockArea">
		<ul>
			<c:if test="${pager.pageNum != 1 }">
				<li><a href="${pageContext.request.contextPath }/memberList/${pager.pageNum-1}">prev</a></li>
			</c:if>
			
			<c:forEach var="i" begin="${pager.startPage }" end="${pager.endPage }" step="1">
				<c:choose>
					<c:when test="${pager.pageNum==i }">
						<li class="selected-page">${i }</li>
					</c:when>
					<c:otherwise>
						<li><a href="${pageContext.request.contextPath }/memberList/${i}">${i }</a></li>
					</c:otherwise>				
				</c:choose>
			</c:forEach>
			
			<c:if test="${pager.pageNum != pager.endPage }">
				<li><a href="${pageContext.request.contextPath }/memberList/${pager.pageNum+1}">next</a></li>
			</c:if>
		</ul>
	</div>
		</div>
	</div>
</body>
</html>
<script type="text/javascript">
/* var num = document.getElementByClassName

function pageMove(pageNo) {
	subTitle_form.pageNo.value = pageNo;
	subTitle_form.action = "${pageContext.request.contextPath}/admin/memberList";
	subTitle_form.submit();
} */
</script>
