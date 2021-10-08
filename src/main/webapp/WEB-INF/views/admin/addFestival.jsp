<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
h1 {
	text-align: center;
	font-size: 30px;
	line-height: 30px;
	font-weight: 700;
	letter-spacing: -0.4px;
	margin-bottom: 10px;
}

.up {
	text-align: center;
	width: 30px;
	height: 3px;
	background: #08b2f5;
	position: relative;
	display: inline-block;
	margin-bottom: 10px;
}

table {
	border: 1px solid black;
	border-collapse: collapse;
	width: 1000px;
	margin: 0 auto;
}

th, td {
	border: 1px solid black;
	text-align: center;
	line-height: 35px;
	vertical-align: middle;
}

table th {
	font-size: 18px;
}

table td {
	font-size: 15px;
}

.btn_insert {
    margin-top: 10px;
    margin-right: 100px;
    border: 1px solid black;
    width: 200px;
    line-height: 50px;
    text-align: center;
    cursor: pointer;
}

input[type=text] {
	width: 750px;
}

.up {
   display: block;
   margin: 10px auto;
   /* 크기 조절 */
   width: 120px;
}

.sibal li {
	display: inline-block;
	margin: 0 10px;
}
</style>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<body>
<br> 
	<div class="wrap">
		<div class="container">
			<table style="width: 1100px; margin-bottom: 20px;">
				<tr>
					<th style="width: 5%">글번호</th>
					<th style="width: 9%">제목</th>
					<th style="width: 11%">기간</th>
					<th style="width: 11%">1일차</th>
					<th style="width: 11%">2일차</th>
					<th style="width: 11%">3일차</th>
					<th style="width: 11%">4일차</th>
					<th style="width: 11%">5일차</th>
					<th style="width: 10%">장소</th>
					<th style="width: 7%">버튼상태</th>
					<th style="width: 6%"></th>
				</tr>
				<c:forEach var="festivalList" items="${festivalList }" end="4">
				<tr>
					<td>${festivalList.no }</td>
					<td>${festivalList.subject }</td>
					<td>${festivalList.term }</td>
					<td>${festivalList.day1 }</td>
					<td>${festivalList.day2 }</td>
					<td>${festivalList.day3 }</td>
					<td>${festivalList.day4 }</td>
					<td>${festivalList.day5 }</td>
					<td>${festivalList.spot }</td>
					<td>${festivalList.link }</td>
					<td style="background-color: #08b2f5; color: white; cursor: pointer;"><a href="${pageContext.request.contextPath}/removeFestival/${festivalList.no}">삭제</a></td>
				</tr>
				</c:forEach>
			</table>
			<div class="sibal" style="width: 200px; margin: 0 auto; margin-bottom: 40px;">
				<ul>
					<li>1</li>
					<li>2</li>
					<li>3</li>
					<li>다음</li>
				</ul>
			</div>
		
			<h1>축제 등록</h1>
			<span class="up"></span>
			<div class="formDiv">
				<form name="f" method="post">
	 			<table>
	 				<tr>
						<th>글번호</th>
	 					<td><input type="text" placeholder="자동등록" readonly="readonly"></td>
	 				</tr>
	 				<tr>
						<th>제목</th>
	 					<td><input type="text" name="subject" value="${festival.subject }"></td>
	 				</tr>
	 				<tr>
	 					<th>메인 이미지</th>
	 					<td><input class="mainImg" type="file" name="mainImg" value="${festival.mainImg }"></td>
	 				</tr>
	 				<tr>
	 					<th>슬라이드 이미지</th>
	 					<td>
	 						<input class="slideImg" type="file" name="slideImg" value="${festival.slideImg }">
	 						<input class="slideImg" type="file" name="slideImg" value="${festival.slideImg }">
	 						<input class="slideImg" type="file" name="slideImg" value="${festival.slideImg }">
	 					</td>
	 				</tr>
	 				<tr>
	 					<th>기간</th>
	 					<td><input type="text" name="term" value="${festival.trem }"></td>
	 				</tr>
	 				<tr>
	 					<th>1일차</th>
	 					<td><input type="text" name="day1" value="${festival.day1 }"></td>
	 				</tr>
	 				<tr>
	 					<th>2일차</th>
	 					<td><input type="text" name="day2" value="${festival.day2 }"></td>
	 				</tr>
	 				<tr>
	 					<th>3일차</th>
	 					<td><input type="text" name="day3" value="${festival.day3 }"></td>
	 				</tr>				
	 				<tr>
	 					<th>4일차</th>
	 					<td><input type="text" name="day4" value="${festival.day4 }"></td>
	 				</tr>
	 				<tr>
	 					<th>5일차</th>
	 					<td><input type="text" name="day5" value="${festival.day5 }"></td>
	 				</tr>
	 				<tr>
	 					<th>장소</th>
	 					<td><input type="text" name="spot" value="${festival.spot }"></td>
	 				</tr>
	 				<tr>
	 					<th>버튼 상태</th>
	 					<td><input type="text" name="link" value="${festival.link }"></td>
	 				</tr>
	 			</table>
	 			</form>
	 			<div class="btn_insert" onclick="chk_form();" style="margin: 20px auto;">추가하기</div>
 			</div>
 		</div>
 	</div>
 </body>
 <script type="text/javascript">
	var ojb = document.f;
	
	
	function chk_form(){
		var msg = confirm("등록하시겠습니까?")
		
		/* if($(".mainImg").val()=="") {
			$(".mainImg").val()==null;
		}
		
		if($(".slideImg").val()=="") {
			$(".slideImg").val()==null;
		} */
		
		if (msg == true) {
			ojb.submit();
		}
	}
</script>