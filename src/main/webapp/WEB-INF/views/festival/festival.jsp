<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="<c:url value="/css/trail.css"/>" type="text/css">
<link rel="stylesheet" href="<c:url value="/css/board.css"/>" type="text/css">
<style>

</style>
<div class="sub_wrap">
	<div class="sub_tit">
		<h1>제주올레걷기축제</h1>
		<div class="under"></div>
	</div>

	<!------------------------콘텐츠 시작-------------------------------->
	<div class="contents_wrap">
		<div class="festival_area">
			<div class="festival_movie">
				<iframe width="100%" src="https://www.youtube.com/embed/JmTifQeC2Mk"
					frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
			</div>
			<div class="festival_txt">
				2020 제주올레걷기축제 영상
				<div class="btn_festival">
					<a href="http://intro.jejuolle.org/intro/default.asp"
						target="_blank">2021 제주올레걷기축제 바로가기</a>
				</div>
			</div>
		</div>
		
		<div class="letter_list02">
		<c:forEach var="festival" items="${festivalList}">
			<div class="festival_form">
				<a href="${pageContext.request.contextPath }/festival/${festival.no}">
					<div class="festival_img">
						<img src="${pageContext.request.contextPath }/images/festival/${festival.mainImg}">
						${festival.mainImg }
					</div>
					<div class="festival_info">
						<a href="location.href='festival/${festival.no }'">
						${festival.subject }
					</a>
					</div>
				</a>
			</div>	
		</c:forEach>
		</div>	
	</div>
</div>