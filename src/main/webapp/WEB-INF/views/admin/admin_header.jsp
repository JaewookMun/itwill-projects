<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>

</style>

	<div class="top_wrap">
		<div class="util_wrap">
			<div class="util">
				<div class="on_site01"><a href="#">제주올레트레일</a></div>
				<div class="top_util">
					<ul>
					<li class="top_bull">
						<a href="${pageContext.request.contextPath}/admin">관리자 홈</a>
					</li>
					<li class="top_bull">
						<a href="${pageContext.request.contextPath}/member/logout">로그아웃</a>
					</li>
					</ul>
				</div>
			</div>
			<div class="nav">
				<div class="logo" onclick="location.href='${pageContext.request.contextPath}/'"></div>
				<div class="gnb">
					<ul>
						<li><a href="${pageContext.request.contextPath}/memberList/1">회원목록</a></li>
						<%-- 찬혁아 이거 두개만 뺄게
						<li><a href="${pageContext.request.contextPath}/admin">게시판 목록</a></li>
						<li><a href="${pageContext.request.contextPath}/admin">명예의 전당 목록</a></li>
						--%>
						<li><a href="${pageContext.request.contextPath}/faqList/1">FAQ 목록</a></li>
						<li id="adminProgram">
							<a href="${pageContext.request.contextPath}/admin/program/schedule_register">프로그램</a>
							<div class="sub-area" id="subArea">
								<ul>
									<li><a href="${pageContext.request.contextPath}/admin/program/schedule_register">프로그램 등록</a></li>
									<li><span>|</span></li>
									<li><a href="${pageContext.request.contextPath}/admin/program/schedule_list/1">프로그램 조회</a></li>
								</ul>
							</div>
						</li>
						<li><a href="${pageContext.request.contextPath}/addCourse">코스 등록</a></li>
						<li><a href="${pageContext.request.contextPath}/addFestival/">축제</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
<script type="text/javascript">
	document.getElementById("adminProgram").onclick=function(){
		document.getElementById("subArea").children.classList.add("admin-on");
	}

	document.getElementById("adminProgram").onmouseover=function(){
		document.getElementById("subArea").classList.add("admin-on");
	}
	
	document.getElementById("subArea").onmouseout=function(){
		document.getElementById("subArea").classList.remove("admin-on");
	}
	
	
</script>
	