<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="<c:url value="/css/trail.css"/>" type="text/css">
<link rel="stylesheet" href="<c:url value="/css/board.css"/>" type="text/css">
<style>
/* .tf-01 {
	padding-right: 50px;
} */
</style>
<div class="sub_wrap">
	<div class="sub_tit">
		<h1>제주올레걷기축제</h1>
		<div class="under"></div>
	</div>

	<div class="contents_wrap">
		<div class="info_txt_area">
			<div class="left_area">
				<div class="fe_poster">
					<img src="${pageContext.request.contextPath}/images/festival/${festival.mainImg }">
				</div>
			</div>
			<div class="right_area">
				<div class="up"></div>
				<div class="con_txt">
					<h2>${festival.subject }</h2>
				</div>

				<table class="table_fe">
					<tr>
						<td class="tf-01" style="padding-right: 50px;">· 기간</td>
						<td class="tf-02">${festival.term }</td>
					</tr>

					<tr>
						<td class="tf-01">· 1일차</td>
						<td class="tf-02">${festival.day1 }</td>
					</tr>

					<tr>
						<td class="tf-01">· 2일차</td>
						<td class="tf-02">${festival.day2 }</td>
					</tr>

					<tr>
						<td class="tf-01">· 3일차</td>
						<td class="tf-02">${festival.day3 }</td>
					</tr>
					<c:if test="${festival.day4!=null }">
					<tr>
						<td class="tf-01">· 4일차</td>
						<td class="tf-02">${festival.day4 }</td>
					</tr>
					</c:if>
					<c:if test="${festival.day5!=null }">
					<tr>
						<td class="tf-01">· 5일차</td>
						<td class="tf-02">${festival.day5 }</td>
					</tr>
					</c:if>
					<tr>
						<td class="tf-01">· 장소</td>
						<td class="tf-02">${festival.spot }</td>
					</tr>
				</table>
				
				<!-- 버튼 유무(1=> 없음, 2=> 가이드북, 3=> 축제, 4=> 두개 다 존재) -->				
				<c:choose>
					<c:when test="${festival.link==1 }">
					
					</c:when>
					<c:when test="${festival.link==2 }">
					<div class="fe_btn">
					<a href="#"
						target="_blank">가이드북 다운로드</a>
					</div>	
					</c:when>
					
					<c:when test="${festival.link==3 }">
					<div class="fe_btn">
					<a href="#"
						target="_blank">축제 사이트 바로가기</a>
					</div>	
					</c:when>
					
					<c:when test="${festival.link==4 }">
					
					<div class="fe_btn">
					<a href="#"
						target="_blank">가이드북 다운로드</a>
					</div>	
					
					<div class="fe_btn">
					<a href="#"
						target="_blank">축제 사이트 바로가기</a>
					</div>	
					</c:when>
				</c:choose>
				<!-- <div class="fe_btn">
					<a href="http://intro.jejuolle.org/festival/the11th/default.asp"
						target="_blank">축제 사이트 바로가기</a>
				</div>
				
				<div class="fe_btn">
					<a href="http://intro.jejuolle.org/festival/the11th/default.asp"
						target="_blank">축제 사이트 바로가기</a>
				</div> -->
				
				
			</div>
			
			
			<!-- 추가로 해보기
			 <div class="dashline_box">
				<div class="gallery_wrap02">
					<div class="slideshow_container">

						banner 이미지 슬라이드
						<div class="main_slide_wrap" style="margin-bottom: 40px;">


							<div class="cycle-slideshow" data-cycle-fx="scrollHorz"
								data-cycle-pause-on-hover="true" data-cycle-speed="300"
								data-cycle-prev="#prev" data-cycle-next="#next"></div>
							<div class="watermark02">
								<img src="/trail/images/sub_course/trail_watermark.png">
							</div>
							<div class="slide_arw">
								<a href="#" id="prev" class="prev">&#10094;</a> <a href="#"
									id="next" class="next">&#10095;</a>
							</div>
						</div>
					</div>
				</div>

			</div> -->
		</div>
		<div class="btn_area02">
			<div class="btn_list02"
				onclick="location.href='${pageContext.request.contextPath }/festival'">목록으로</div>
		</div>
	</div>
</div>
