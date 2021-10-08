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
	width: 100%;
	border: 0px solid #ddd;
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
	width: 190px;
	text-align: center;
	font-size: 18px;
	font-weight: 300;
	line-height: 24px;
	padding: 14px 24px;
	vertical-align: middle;
}
/* ----------------- */
/* .formDiv {
	width: 100%;
	margin: 0 auto;
} */

.up {
   display: block;
   margin: 10px auto;
   /* 크기 조절 */
   width: 120px;
}

th {
	width: 30%;
	margin-left: -10px;
}

td {
	width: 65%;
	border-bottom: 1px solid black;
}

form {
	width: 700px;
	margin: 0 auto;
}

input[type=text] {
	line-height: 20px;
	width: 250px;
}

.btn_insert {
	float: right;
    margin-top: 10px;
    margin-right: 100px;
    border: 1px solid black;
    width: 200px;
    line-height: 50px;
    text-align: center;
    cursor: pointer;
}
</style>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<body>
<br>
	<div class="wrap">
		<div class="container">
			<h1>코스 등록</h1>
			<span class="up"></span>
			<div class="formDiv">
				<form name="f" method="post" enctype="multipart/form-data">
	 			<table>
	 				<tr>
						<th>코스 번호</th>
	 					<td><input type="text" name="category" value="${addCourse.category }"></td>
	 				</tr>
	 				<tr>
						<th>코스 타이틀</th>
	 					<td><input type="text" name="titleNo" value="${addCourse.titleNo }"></td>
	 				</tr>
	 				<tr>
	 					<th>지도</th>
	 					<td><input type="file" name="map" value="${addCourse.map }"></td>
	 				</tr>
	 				<tr>
	 					<th>코스위치</th>
	 					<td><input type="file" name="thumb" value="${addCourse.thumb }"></td>
	 				</tr>
	 				<tr>
	 					<th>비주얼 맵</th>
	 					<td><input type="file" name="vmap" value="${addCourse.vmap }"></td>
	 				</tr>
	 				<tr>
	 					<th>코스 총 길이</th>
	 					<td><input type="text" name="totLoad" value="${addCourse.totLoad }"></td>
	 				</tr>
	 				<tr>
	 					<th>코스 시간</th>
	 					<td><input type="text" name="totTime" value="${addCourse.totTime }"></td>
	 				</tr>
	 				<tr>
	 					<th>코스 난이도</th>
	 					<td><input type="file" name="levelStar" value="${addCourse.levelStar }"></td>
	 				</tr>				
	 				<tr>
	 					<th>코스 그래픽</th>
	 					<td><input type="file" name="graph" value="${addCourse.graph }"></td>
	 				</tr>
	 				<tr>
	 					<th>코스 설명</th>
	 					<td><input type="text" name="courseTxt" value="${addCourse.courseTxt }"></td>
	 				</tr>
	 				<tr>
	 					<th>휠체어 난이도</th>
	 					<td><input type="file" name="wheelStar" value="${addCourse.wheelStar }"></td>
	 				</tr>
	 				<tr>
	 					<th>휠체어 구간</th>
	 					<td><input type="text" name="wheelLoad" value="${addCourse.wheelLoad }"></td>
	 				</tr>
	 				<tr>
	 					<th>휠체어 시작</th>
	 					<td><input type="text" name="wheelStart" value="${addCourse.wheelStart }"></td>
	 				</tr>
	 				<tr>
	 					<th>휠체어 코스 설명</th>
	 					<td><input type="text" name="content" value="${addCourse.content }"></td>
	 				</tr>
	 				<tr>
	 					<th>코스 TIP</th>
	 					<td><input type="text" name="tip" value="${addCourse.tip }"></td>
	 				</tr>
	 				<tr>
	 					<th>우정의 길 이름</th>
	 					<td><input type="text" name="friendName" value="${addCourse.friendName }"></td>
	 				</tr>
	 				<tr>
						<th>우정의 길 이미지</th>
						<td><input type="file" name="friendImg" value="${addCourse.friendImg }"></td>
					</tr>
					<tr>
						<th>우정의 길 기업 이미지</th>
						<td><input type="file" name="friendSq" value="${addCourse.friendSq }"></td>
					</tr>
					<tr>
	 					<th>우정의 길 위치</th>
	 					<td><input type="text" name="friendLoc" value="${addCourse.friendLoc }"></td>
	 				</tr>
	 				<tr>
	 					<th>우정의 길 난이도</th>
	 					<td><input type="text" name="friendLevel" value="${addCourse.friendLevel }"></td>
	 				</tr>
	 				<tr>
	 					<th>우정의 길 경로</th>
	 					<td><input type="text" name="friendCourse" value="${addCourse.friendCourse }"></td>
	 				</tr>
	 				<tr>
	 					<th>우정의 길 사이트 링크</th>
	 					<td><input type="text" name="friendLink" value="${addCourse.friendLink }"></td>
	 				</tr>
	 				<tr>
	 					<th>우정의 길 정보</th>
						<td><input type="text" name="friendInfo" value="${addCourse.friendInfo }"></td>
					</tr>
	 				<tr>
						<th>대중교통 시작점</th>
						<td>
							<%-- <input multiple="multiple" type="file" name="s1" value="${addCourse.startImg }"> --%>
							<input type="file" name="startImg" value="${addCourse.startImg }">
							<input type="file" name="startImg" value="${addCourse.startImg }">
							<input type="file" name="startImg" value="${addCourse.startImg }">
							<input type="file" name="startImg" value="${addCourse.startImg }">
							<input type="file" name="startImg" value="${addCourse.startImg }">
							<input type="file" name="startImg" value="${addCourse.startImg }">
						</td>
					</tr>
					<tr>
						<th>대중교통 종점</th>
						<td>
							<%-- <input multiple="multiple" type="file" name="e1" value="${addCourse.endImg }"> --%>
							<input type="file" name="endImg" value="${addCourse.endImg }">
							<input type="file" name="endImg" value="${addCourse.endImg }">
							<input type="file" name="endImg" value="${addCourse.endImg }">
							<input type="file" name="endImg" value="${addCourse.endImg }">
							<input type="file" name="endImg" value="${addCourse.endImg }">
							<input type="file" name="endImg" value="${addCourse.endImg }">
						</td>
					</tr>
					<tr>
						<th>포토 갤러리</th>
						<td>
							<%-- <input multiple="multiple" type="file" name="1" value="${addCourse.gallery }"> --%>
							<input type="file" name="gallery" value="${addCourse.gallery }">
							<input type="file" name="gallery" value="${addCourse.gallery }">
							<input type="file" name="gallery" value="${addCourse.gallery }">
							<input type="file" name="gallery" value="${addCourse.gallery }">
							<input type="file" name="gallery" value="${addCourse.gallery }">
							<input type="file" name="gallery" value="${addCourse.gallery }">
							<input type="file" name="gallery" value="${addCourse.gallery }">
							<input type="file" name="gallery" value="${addCourse.gallery }">
							<input type="file" name="gallery" value="${addCourse.gallery }">
							<input type="file" name="gallery" value="${addCourse.gallery }">
							<input type="file" name="gallery" value="${addCourse.gallery }">
							<input type="file" name="gallery" value="${addCourse.gallery }">
							<input type="file" name="gallery" value="${addCourse.gallery }">
							<input type="file" name="gallery" value="${addCourse.gallery }">
							<input type="file" name="gallery" value="${addCourse.gallery }">
						</td>
					</tr>
					<tr>
						<th>관광지 이미지</th>
						<td>
							<%-- <input multiple="multiple" type="file" name="관광지 이미지1" value="${addCourse.spotImg }"> --%>
							<input type="file" name="spotImg" value="${addCourse.spotImg }">
							<input type="file" name="spotImg" value="${addCourse.spotImg }">
							<input type="file" name="spotImg" value="${addCourse.spotImg }">
							<input type="file" name="spotImg" value="${addCourse.spotImg }">
							<input type="file" name="spotImg" value="${addCourse.spotImg }">
						</td>
					</tr>
					<tr>
						<th>관광지 이름</th>
						<td>
							<%-- <input multiple="multiple" type="text" name="관광지 이름1" value="${addCourse.spotName }"> --%>
							<input type="text" name="spotName" value="${addCourse.spotName }">
							<input type="text" name="spotName" value="${addCourse.spotName }">
							<input type="text" name="spotName" value="${addCourse.spotName }">
							<input type="text" name="spotName" value="${addCourse.spotName }">
							<input type="text" name="spotName" value="${addCourse.spotName }">
						</td>
					</tr>
					<tr>
						<th>관광지 설명</th>
						<td>
							<%-- <input multiple="multiple" type="text" name="관광지 설명1" value="${addCourse.spotTxt }"> --%>
							<input type="text" name="spotTxt" value="${addCourse.spotTxt }">
							<input type="text" name="spotTxt" value="${addCourse.spotTxt }">
							<input type="text" name="spotTxt" value="${addCourse.spotTxt }">
							<input type="text" name="spotTxt" value="${addCourse.spotTxt }">
							<input type="text" name="spotTxt" value="${addCourse.spotTxt }">
						</td>
					</tr>
					<tr>
						<th>숙소 업체명</th>
						<td>
							<%-- <input multiple="multiple" type="text" name="숙소 업체명1" value="${addCourse.stayName }"> --%>
							<input type="text" name="stayName" value="${addCourse.stayName }">
							<input type="text" name="stayName" value="${addCourse.stayName }">
							<input type="text" name="stayName" value="${addCourse.stayName }">
							<input type="text" name="stayName" value="${addCourse.stayName }">
							<input type="text" name="stayName" value="${addCourse.stayName }">
						</td>
	 				</tr>
	 				<tr>
						<th>숙소 주소</th>
						<td>
							<%-- <input multiple="multiple" type="text" name="숙소 주소1" value="${addCourse.stayAdd }"> --%>
							<input type="text" name="stayAdd" value="${addCourse.stayAdd }">
							<input type="text" name="stayAdd" value="${addCourse.stayAdd }">
							<input type="text" name="stayAdd" value="${addCourse.stayAdd }">
							<input type="text" name="stayAdd" value="${addCourse.stayAdd }">
							<input type="text" name="stayAdd" value="${addCourse.stayAdd }">
						</td>
	 				</tr>
					<tr>
						<th>숙소 연락처</th>
						<td>
							<%-- <input multiple="multiple" type="text" name="숙소 번호1" value="${addCourse.stayNumber }"> --%>
							<input type="text" name="stayNumber" value="${addCourse.stayNumber }">
							<input type="text" name="stayNumber" value="${addCourse.stayNumber }">
							<input type="text" name="stayNumber" value="${addCourse.stayNumber }">
							<input type="text" name="stayNumber" value="${addCourse.stayNumber }">
							<input type="text" name="stayNumber" value="${addCourse.stayNumber }">
						</td>
					</tr>
					<tr>
						<th>음식점 업체명</th>
						<td>
							<%-- <input multiple="multiple" type="text" name="음식점 업체명1" value="${addCourse.foodName }"> --%>
							<input type="text" name="foodName" value="${addCourse.foodName }">
							<input type="text" name="foodName" value="${addCourse.foodName }">
							<input type="text" name="foodName" value="${addCourse.foodName }">
							<input type="text" name="foodName" value="${addCourse.foodName }">
							<input type="text" name="foodName" value="${addCourse.foodName }">
						</td>
					</tr>
					<tr>
						<th>음식점 주소</th>
						<td>
							<%-- <input multiple="multiple" type="text" name="음식점 주소1" value="${addCourse.foodAdd }"> --%>
							<input type="text" name="foodAdd" value="${addCourse.foodAdd }">
							<input type="text" name="foodAdd" value="${addCourse.foodAdd }">
							<input type="text" name="foodAdd" value="${addCourse.foodAdd }">
							<input type="text" name="foodAdd" value="${addCourse.foodAdd }">
							<input type="text" name="foodAdd" value="${addCourse.foodAdd }">
						</td>
					</tr>
					<tr>
						<th>음식점 연락처</th>
						<td>
							<%-- <input multiple="multiple" type="text" name="음식점 연락처1" value="${addCourse.foodNumber }"> --%>
							<input type="text" name="foodNumber" value="${addCourse.foodNumber }">
							<input type="text" name="foodNumber" value="${addCourse.foodNumber }">
							<input type="text" name="foodNumber" value="${addCourse.foodNumber }">
							<input type="text" name="foodNumber" value="${addCourse.foodNumber }">
							<input type="text" name="foodNumber" value="${addCourse.foodNumber }">
						</td>
					</tr>
	 			</table>
	 			</form>
	 			<div class="btn_insert" onclick="chk_form();">추가하기</div>
 			</div>
 		</div>
 	</div>
 </body>
 <script type="text/javascript">
	var ojb = document.f;
	function chk_form(){
		var msg = confirm("등록하시겠습니까?")
		if (msg == true) {
			ojb.submit();
		}
	}
</script>