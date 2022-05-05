<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<div class="top_wrap">
				<div class="util_wrap">
					<div class="util">
						<div class="on_site01"><a href="#">제주올레트레일</a></div>
						<div class="top_util">
							<ul>
								<!-- 로그인시 -->
								<c:choose>
									<c:when test="${loginMember.id != null && loginMember.status != 9 }">
									<li class="top_bull">
										<a href="${pageContext.request.contextPath}/member/mypage">마이페이지</a>
									</li>
									</c:when>
									<c:when test="${loginMember.status == 9 }">
									<li class="top_bull">
										<a href="${pageContext.request.contextPath}/admin">관리자 페이지</a>
									</li>
									</c:when>
								</c:choose>
							
									<c:if test="${loginMember.id == null }">
									<li class="top_bull">
										<a href="${pageContext.request.contextPath}/member/login">로그인</a>
									</li>
									</c:if>
									<c:if test="${loginMember.id != null }">
									<li class="top_bull">
										<a href="${pageContext.request.contextPath}/member/logout">${loginMember.name }님 로그아웃</a>
									</li>
									</c:if>
								<c:if test="${loginMember.id == null }">
								<li class="top_bull">
									<a href="${pageContext.request.contextPath}/member/join">회원가입</a>
								</li>
								</c:if>
							</ul>
						</div>
					</div>
					<div class="nav">
						<div class="logo" onclick="location.href='${pageContext.request.contextPath}/'"></div>
						<div class="gnb">
							<ul>
								<li><a href="${pageContext.request.contextPath}/courses">올레길</a></li>
								<li><a href="${pageContext.request.contextPath }/prepare">여행준비</a></li>
								<li><a href="${pageContext.request.contextPath }/festival">축제</a></li>
								<li><a href="${pageContext.request.contextPath}/program/schedule">프로그램</a></li>
								<li><a href="${pageContext.request.contextPath}/honor_one/1">명예의전당</a></li>
								<li><a href="${pageContext.request.contextPath}/center_info">올레센터</a></li>
						
								<li><a href="${pageContext.request.contextPath}/boards">커뮤니티</a></li>
								<li><a href="${pageContext.request.contextPath}/FAQ">FAQ</a></li>
							</ul>
						</div>
				</div>
			</div>
		</div>