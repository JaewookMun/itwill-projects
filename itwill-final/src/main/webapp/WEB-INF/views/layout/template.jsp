<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- tiles 관련 태그를 제공하는 태그 라이브러리 포함 --%>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring</title>
<link rel="stylesheet" href="<c:url value="/css/style.css"/>" type="text/css">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/notosanskr.css">
<link rel="stylesheet" href="<c:url value="/css/index.css"/>" type="text/css">
<link rel="stylesheet" href="<c:url value="/css/skip_header.css"/>" type="text/css">
<link rel="stylesheet" href="<c:url value="/css/header.css"/>" type="text/css">
<link rel="stylesheet" href="<c:url value="/css/footer.css"/>" type="text/css">
<link rel="stylesheet" href="<c:url value="/css/reset.css"/>" type="text/css">
<link rel="stylesheet" href="<c:url value="/css/map.css"/>" type="text/css">
<link rel="stylesheet" href="<c:url value="/css/cf.css"/>" type="text/css">
<link rel="shortcut icon" href="${pageContext.request.contextPath }/images/2.ico">

</head>
<body>
	<div class="wrap">
		<tiles:insertAttribute name="skip_header"/>
		
		<div id="header">
			<tiles:insertAttribute name="header"/>
		</div>
		
		<div id="content">
			<tiles:insertAttribute name="content"/>
		</div>
		
		<div id="footer">
			<tiles:insertAttribute name="footer"/>
		</div>
	</div>
</body>
</html>