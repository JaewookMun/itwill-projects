<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
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

.login_area {
    width: 50%;
    margin: 0 auto;
    margin-top: 80px;
    margin-bottom: 80px;
}

.login_area input, fieldset input {
	display: block;
    width: 100%;
    height: 50px;
    border: 1px solid #ddd;
    margin-bottom: 10px;
    color: #555;
    font-size: 15px;
    padding: 2%;
    line-height: normal;
    border-radius: 0;
    outline-style: none;
    appearance: none;
}

.login_area fieldset label {
    display: none;
}

.btn_login {
    width: 100%;
    height: 50px;
    line-height: 50px;
    text-align: center;
    color: #ffffff;
    font-size: 16px;
    font-weight: 400;
    background-color: #08b2f5;
    margin-top: 10px;
    margin: 0 auto;
    cursor: pointer;
}

.btn_login:hover {
    background-color: #008fe9;
}

.sch_info {
    width: 100%;
    text-align: center;
    margin-top: 15px;
    line-height: 13px;
}

.sch_info a {
    color: #555;
    font-size: 15px;
    font-weight: 300;
    position: relative;
    display: inline-block;
}

.bar {
    display: inline-block;
    width: 1px;
    height: 13px;
    text-indent: -999em;
    background: #888;
    margin: 0 5px;
}
</style>	
</head>
<body>
	<div class="wrap">

		<div class="container">
			<div class="sub_wrap">
				<div class="sub_tit">
					<h1>로그인</h1>
					<div class="under"></div>
				</div>
				
				<div class="contents_wrap">
				<table width=780 border=0 cellpadding=0 cellspacing=0>
					<tr>
					  <td width="20"></td>
					  <td style="color: red; text-align: center;">${message }</td>			
					</tr>
				</table>
					
					 <%--비로그인 회원일시 --%> 
					 <%--<c:if test="${empty(loginMember) }"> --%>
						<div class="login_area">
							<form name="f" method="post">
								<input type="hidden" name="chk_email"> <input
									type="hidden" name="prev_addr" value="">
								<fieldset>
									<label for="id">아이디</label> 
										<input type="text" name="id" placeholder="아이디(E-MAIL)" value="${id }"> 
									<label for="pw">비밀번호</label> 
										<input type="password" name="pw" placeholder="비밀번호(PASSWORD)" value="${pw }">
								</fieldset>
							</form>
						
						<div class="btn_login" onclick="chk_login();">로그인</div>

						<div class="sch_info">
							<a href="${pageContext.request.contextPath}/member/join">회원가입</a>&nbsp;&nbsp;<span
								class="bar"></span>&nbsp;&nbsp; <a
								href="${pageContext.request.contextPath}/member/find">ID/PW 찾기</a>
						</div>
					    </div>
					<%--</c:if> --%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

<script type="text/javascript">

function chk_login(){
			if (f.id.value==""){
						alert("이메일 주소를 입력바랍니다.");
						f.id.focus();
						return false;
			}

			if (f.pw.value==""){
						alert("비밀번호를 입력바랍니다.");
						f.pw.focus();
						return false;
			}
			
			f.action = "${pageContext.request.contextPath}/member/login";
			f.submit();
}
</script>