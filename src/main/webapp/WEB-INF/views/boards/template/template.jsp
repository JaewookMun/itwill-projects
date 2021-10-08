<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring</title>
<link rel="stylesheet" href="<c:url value="/css/style.css"/>"
	type="text/css">
<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/earlyaccess/notosanskr.css">
<link rel="stylesheet" href="<c:url value="/css/index.css"/>"
	type="text/css">
<link rel="stylesheet" href="<c:url value="/css/skip_header.css"/>"
	type="text/css">
<link rel="stylesheet" href="<c:url value="/css/header.css"/>"
	type="text/css">
<link rel="stylesheet" href="<c:url value="/css/footer.css"/>"
	type="text/css">
<link rel="stylesheet" href="<c:url value="/css/reset.css"/>"
	type="text/css">
<link rel="stylesheet" href="<c:url value="/css/map.css"/>"
	type="text/css">
<link rel="stylesheet" href="<c:url value="/css/cf.css"/>"
	type="text/css">

<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/index2.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/trail.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/board.css"/>">
	
	
<script src="<c:url value="/js/boards.js"/>"></script>

</head>
<body>
	<div class="wrap">
		<tiles:insertAttribute name="skip_header" />

		<div id="header">
			<tiles:insertAttribute name="header" />
		</div>

		<div class="container">

			<div class="sub_wrap">

				<div class="sub_tit">
					<h1>커뮤니티</h1>
					<div class="under"></div>
				</div>

				<div class="contents_wrap">
					<tiles:insertAttribute name="sub_header" />

					<tiles:insertAttribute name="content" />
				</div>
			</div>
		</div>
		
		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>
		
	</div>
	
</body>
</html>