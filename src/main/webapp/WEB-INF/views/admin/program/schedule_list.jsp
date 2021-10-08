<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 공용 css -->
<link rel="stylesheet" href='<c:url value="/css/program.css"/>'>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
#tableArea {
	margin-top: 40px;
}

#tableArea table {
	border-bottom: 4px double #08b2f5;
}


.head-row th {
	background: #08b2f5;
	color: white;
	height: 30px;
	vertical-align: middle;
	font-size: 15px;
    font-weight: 500;
}

#tableArea td {
	height: 30px;
	vertical-align: middle;
}

.th-row:hover {
	background-color: #F0F8FF; 
}

/* 하단 블럭영역 (페이지 선택) */
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

.link-area a {
	position: absolute;
	right: 70px;
	top: 140px;
}

.link-area a:hover {
	color: #08b2f5;
}
</style>


<div id="container">
	<div class="cont-title">
		<h1>프로그램 조회</h1>
		<span></span>
	</div>
	<div class="link-area">
		<a href="${pageContext.request.contextPath }/program/schedule">전체일정 조회</a>
	</div>
	<div id="tableArea">
		<table>
			<tr class="head-row">
				<th width="70">no</th>
				<th width="50">유형</th>
				<th width="300">제목</th>
				<th width="450">출발장소</th>
				<th width="150">출발일자</th>
				<th width="150">담당자</th>
				<th width="60">비고</th>
			</tr>
			<c:forEach var="i" begin="0" end="${fn:length(scheduleList)-1 }" step="1">
				<tr class="th-row">
				<c:choose>
					<c:when test="${pageNum==1 }">
						<td>${pager.totalBoard-i }</td>			
					</c:when>
					<c:otherwise>
						<td>${pager.totalBoard-(pager.pageSize*(pager.pageNum-1))-i }</td>
					</c:otherwise>
				</c:choose>
					<td>${scheduleList[i].scheduleType }</td>			
					<td>${scheduleList[i].scheduleTitle }</td>			
					<td>
						<a id="link${scheduleList[i].scheduleNo }" href="javascript:void(0);" onclick="goModify(${scheduleList[i].scheduleNo });">
							${scheduleList[i].departureLocation }
						</a>
					</td>			
					<td>${fn:substring(scheduleList[i].departureDatetime,0,10) }</td>			
					<td>${scheduleList[i].volunteer }</td>			
					<td>
						<button id="btn${scheduleList[i].scheduleNo }" onclick="remove(${scheduleList[i].scheduleNo });">삭제</button>
					</td>			
				</tr>	
			</c:forEach>	
		</table>
	</div>
	<div id="blockArea">
		<ul>
			<c:if test="${pager.pageNum != 1 }">
				<li><a href="${pageContext.request.contextPath }/admin/program/schedule_list/${pager.pageNum-1}">prev</a></li>
			</c:if>
			
			<c:forEach var="i" begin="${pager.startPage }" end="${pager.endPage }" step="1">
				<c:choose>
					<c:when test="${pager.pageNum==i }">
						<li class="selected-page">${i }</li>
					</c:when>
					<c:otherwise>
						<li><a href="${pageContext.request.contextPath }/admin/program/schedule_list/${i}">${i }</a></li>
					</c:otherwise>				
				</c:choose>
			</c:forEach>
			
			<c:if test="${pager.pageNum != pager.endPage }">
				<li><a href="${pageContext.request.contextPath }/admin/program/schedule_list/${pager.pageNum+1}">next</a></li>
			</c:if>
		</ul>
	</div>
</div>

<script type="text/javascript">
function remove(scheduleNo){
	
	location.href="${pageContext.request.contextPath}/admin/program/remove/"+scheduleNo;
}

function goModify(scheduleNo){
	if(!confirm("해당 스케쥴 내용을 변경하시겠습니까?")){
		return;
	}
	
	location.href="${pageContext.request.contextPath }/admin/program/modify/"+scheduleNo;
}

</script>