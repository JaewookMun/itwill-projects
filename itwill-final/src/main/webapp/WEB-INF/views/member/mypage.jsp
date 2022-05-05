<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/skip_header.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/earlyaccess/notosanskr.css">

<style type="text/css">

.sub_wrap, .sub_wrap03 {
    width: 1100px;
    height: auto;
    position: relative;
    margin: 0 auto;
    padding: 50px;
    margin-bottom: 80px;
    border: 0px solid red;
}

.sub_tit {
    width: 100%;
    height: auto;
    padding-top: 20px;
    position: relative;
    display: inline-block;
    text-align: center;
    margin: 0 auto;
    border: 0px solid red;
}

.sub_tit h1 {
    width: 100%;
    font-size: 36px;
    font-weight: 500;
    position: relative;
    display: block;
    margin-bottom: 10px;
    text-align: center;
}

.under {
    width: 60px;
    height: 6px;
    background: #08b2f5;
    position: relative;
    display: inline-block;
    margin: 0 auto;
}


.contents_wrap {
    width: 100%;
    height: auto;
    position: relative;
    display: inline-block;
    margin-top: 50px;
    border: 0px solid red;
}

.mypage_area {
    width: 100%;
    height: auto;
    position: relative;
    display: inline-block;
    outline-style: none;
    border: 0px solid red;
    clear: both;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    margin: 0 auto;
    margin-bottom: 40px;
}

.join_tit {
    width: 100%;
    height: auto;
    position: relative;
    display: inline-block;
    margin-bottom: 10px;
}

.sub_bull, .sub_bull02, .sub_bull03, .sub_bull04 {
    width: 100%;
    position: relative;
    display: inline-block;
    overflow: hidden;
    margin-left: 0%;
    vertical-align: middle;
}

.sub_bull:before {
    top: 6px;
    position: absolute;
    display: block;
    width: 6px;
    height: 6px;
    border-radius: 50%;
    background-color: #08b2f5;
    content: '';
}

.sub_bull span, .sub_bull02 span, .sub_bull04 span {
    font-size: 17px;
    font-weight: 500;
    margin-left: 14px;
    color: #333;
    display: block;
}

.user_box {
    width: 100%;
    height: auto;
    border: 1px solid #dddddd;
    position: relative;
    display: inline-block;
    padding: 30px;
    margin-top: 10px;
    margin-bottom: 20px;
}

.user_profile {
    width: 46%;
    border-style: solid;
    position: relative;
    display: inline-block;
    margin-right: 10px;
}

ol, ul {
    list-style: none;
}

.user_profile li {
    width: 100%;
    height: auto;
    font-size: 18px;
    font-weight: 500;
    line-height: 90px;
    color: #333;
    position: relative;
    display: inline-block;
    color: #333;
    vertical-align: middle;
    padding-bottom: 30px;
    margin-bottom: 30px;
    border-bottom: 1px solid #ddd;
}

.user_profile .user img {
    width: 130px;
    height: 130px;
    position: relative;
    border-radius: 50%;
    background: no-repeat;
    display: inline-block;
    margin-right: 40px;
    margin-left: 40px;
    float: left;
}

img {
	vertical-align: top;
}

.user_profile li h2 {
    font-size: 16px;
    font-weight: 500;
    line-height: 100px;
    color: #333;
    position: relative;
    display: inline-block;
    margin: 0 auto;
    text-align: center;
}

.user_profile li p {
    font-size: 14px;
    font-weight: 300;
    line-height: 22px;
    position: relative;
    display: block;
    margin-left: 0px;
    margin-top: -30px;
    border: 0px solid #dddddd;
    color: #555;
}

.btn_info:hover {
	background-color: #008fe9;
}

.btn_info {
    font-size: 15px;
    font-weight: 400;
    width: 160px;
    height: 50px;
    line-height: 50px;
    text-align: center;
    color: #fff;
    background-color: #08b2f5;
    margin: 0 auto;
    cursor: pointer;
}

.tg_r {
    width: 48%;
    border-collapse: collapse;
    border-spacing: 0;
    border-width: 0px;
    border-style: solid;
    position: relative;
    float: right;
    display: inline-block;
    border: 0px solid red;
    margin-right: 10px;
    vertical-align: top;
}

.tg_r td {
    height: 36px;
    font-size: 16px;
    border-style: solid;
    border-width: 0px;
    overflow: hidden;
    word-break: normal;
    color: #333;
    border: 0px solid red;
    padding: 6px;
}

.tg_r .tg_r-01 {
    width: 14%;
    font-weight: 300;
    border-color: #000000;
    text-align: middle;
    line-height: 24px;
    vertical-align: top;
}

.tg_r .tg_r-02 {
    width: 34%;
    font-size: 16px;
    font-weight: 500;
    line-height: 24px;
    color: #333333;
    vertical-align: middle;
}

table.standard {
    width: 100%;
    height: auto;
    margin: 10px 0px;
    background-color: #fff;
}

table.standard, table.standard td {
    border: 1px solid #ddd;
    text-align: center;
    padding: 14px;
    vertical-align: middle;
    overflow-x: auto;
}

table.standard th {
    line-height: 30px;
    font-size: 15px;
    font-weight: 500;
    text-align: center;
    vertical-align: middle;
    background-color: #78808c;
    color: #fff;
    padding: 6px;
}

table.standard th:nth-child(1) {
    width: 6%;
}

table.standard th:nth-child(2) {
    width: 10%;
}

table.standard th:nth-child(3) {
    width: 50%;
}

table.standard th:nth-child(4) {
    width: 14%;
}

table.standard th:nth-child(5) {
    width: 10%;
}

table.standard td {
    text-align: center;
    font-size: 15px;
    font-weight: 300;
    line-height: 24px;
    color: #555;
}

table.table_qna {
    width: 100%;
    height: auto;
    margin: 10px 0px;
    background-color: #fff;
}

table.table_qna, table.table_qna td {
    border: 1px solid #ddd;
    text-align: center;
    padding: 14px;
    vertical-align: middle;
    overflow-x: auto;
}

table.table_qna th {
    line-height: 30px;
    font-size: 15px;
    font-weight: 500;
    text-align: center;
    vertical-align: middle;
    background-color: #78808c;
    color: #fff;
    padding: 6px;
}

table.table_qna th:nth-child(1) {
    width: 6%;
}

table.table_qna th:nth-child(2) {
    width: 10%;
}

table.table_qna th:nth-child(3) {
    width: 50%;
}

table.table_qna th:nth-child(4) {
    width: 14%;
}

table.table_qna td {
    text-align: center;
    font-size: 15px;
    font-weight: 300;
    line-height: 24px;
    color: #555;
}
</style>
</head>
<body>
	<div class="wrap">

		<div class="container">
			<div class="sub_wrap">
				<div class="sub_tit">
					<h1>마이페이지</h1>
					<div class="under"></div>
				</div>

				<div class="contents_wrap">

					<div class="mypage_area">
						<div class="join_tit ">
							<p class="sub_bull">
								<span>회원정보</span>
							</p>
						</div>

						<div class="user_box">

							<div class="user_profile">
								<ul>
									<li class="user">
									<c:if test="${member.memberImg!=null }">
										<img src="${pageContext.request.contextPath}/images/member/${member.memberImg}">
									</c:if>
									<c:if test="${member.memberImg==null }">
										<img src="${pageContext.request.contextPath}/images/member/no_prof.jpg">
									</c:if>

									<h2>${member.name }</h2>
										<p>
											프로필 사진의 적정 사이즈는<br>130x130 픽셀입니다.
										</p></li>
								</ul>


								<div class="btn_info"
									onclick="javascript:location.href='${pageContext.request.contextPath}/member/edit'">회원정보변경</div>
							</div>

							<table class="tg_r">
								<tr>
									<td class="tg_r-01">E-mail</td>
									<td class="tg_r-02">${member.id }</td>
								</tr>
								<tr>
									<td class="tg_r-01">생년월일</td>
									<td class="tg_r-02">${member.birth }</td>
								</tr>
								<tr>
									<td class="tg_r-01">휴대전화</td>
									<td class="tg_r-02">${member.phone }</td>
								</tr>
								<tr>
									<td class="tg_r-01">주소</td>
									<td class="tg_r-02">${member.mainAddress }&nbsp;&nbsp;${member.detailAddress }</td>
								</tr>
								<tr>
									<td class="tg_r-01">우편번호</td>
									<td class="tg_r-02">${member.zipcode }</td>
								</tr>
							</table>
						</div>

					</div>


					<div class="mypage_area">
						<div class="join_tit ">
							<p class="sub_bull">
								<span>제주올레걷기축제 사전참가신청 내역</span>
							</p>
						</div>

						<table class="standard">
							<tr>
								<th>신청No.</th>
								<th>신청인원(명)</th>
								<th>신청 코스명</th>
								<th>신청일자</th>
							</tr>
							<c:choose>
								<c:when test="${empty(mySheduleList) }">
									<tr>
										<td colspan="5">신청내역이 없습니다.</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach var="myShedule" items="${mySheduleList }">
										<tr>
											<td>${myShedule.schedule.scheduleNo}</td>
											<td>${myShedule.participant.participantNo}</td>
											<td>${myShedule.schedule.scheduleTitle}</td>
											<td>${myShedule.participant.applyDate}</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>			
						</table>
					</div>



					<div class="mypage_area">
						<div class="join_tit ">
							<p class="sub_bull">
								<span>나의 문의 댓글 내역</span>
							</p>
						</div>

						<table class="table_qna">
							<tr>
								<th>문의No.</th>
								<th>문의 코스명</th>
								<th>문의내용</th>
								<th>문의일자</th>
							</tr>
								<c:choose>
								<c:when test="${empty(myCommentList) }">
									<tr>
										<td colspan="5">문의 댓글 내역이 없습니다.</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach var="myComment" items="${myCommentList }">
										<tr>
											<td>${myComment.comment.commentNo}</td>
											<td>${myComment.schedule.scheduleTitle}</td>
											<td>${myComment.comment.commentContent}</td>
											<td>${myComment.comment.commentDate}</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>			
							
						</table>
					</div>
					
					
					<div class="mypage_area">
						<div class="join_tit ">
							<p class="sub_bull">
								<span>나의 FAQ 내역</span>
							</p>
						</div>

						<table class="table_qna">
							<tr>
								<th>FAQ No.</th>
								<th>제목</th>
								<th>작성 내용</th>
								<th>문의일자</th>
							</tr>
								<c:choose>
								<c:when test="${empty(myFaqList) }">
									<tr>
										<td colspan="4">문의 댓글 내역이 없습니다.</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach var="myFaqList" items="${myFaqList }">
										<tr>
											<td>${myFaqList.num}</td>
											<td>${myFaqList.title}</td>
											<td>${myFaqList.content}</td>
											<td>${myFaqList.recent}</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>			
							
						</table>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>