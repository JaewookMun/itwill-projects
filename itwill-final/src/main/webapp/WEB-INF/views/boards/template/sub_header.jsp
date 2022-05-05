<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="commu_btn_area">
	<ul>
		<li id="commu_btn" class="commu_btn"><a href="#" onclick="move_category(1);">소식게시판</a></li>
		<li id="commu_btn" class="commu_btn"><a href="#" onclick="move_category(2);">뉴스룸</a></li>
		<li id="commu_btn" class="commu_btn"><a href="#" onclick="move_category(3);">뉴스레터</a></li>
		<li id="commu_btn" class="commu_btn"><a href="#" onclick="move_category(4);">자료실</a></li>
		<li id="commu_btn" class="commu_btn"><a href="#" onclick="move_category(5);">올레꾼이야기</a></li>
	</ul>
</div>

<form name="subTitle_form" method="get" action="">
	<input type="hidden" id="category" name="category" value="${page.category}"> 
	<input type="hidden" id="pageNo" name="pageNo" value="${page.pageNo}"> 
	<input type="hidden" id="pageSize" name="pageSize" value="8"> 
	<input type="hidden" id="blockSize" name="blockSize" value="5">

	<div class="search">
		<input type="text" name="searchText" value="${page.searchText}">
		<div class="search_ico" onclick="chk_search();"></div>
		
		<c:if test="${loginMember.status == 9 || page.category == 5}">
			<div class="btn_write" onclick="location.href='/jeju/boards/write'">글쓰기</div>
		</c:if>
	</div>
</form>

<script type="text/javascript">

	function move_category(no) {
		//$('#category').val(no);
		//$("input[name=category]").val(no);
		subTitle_form.category.value = no;
		
		if(subTitle_form.pageNo.value == ""){
			subTitle_form.pageNo.value = 1;
		}
		
		if(subTitle_form.searchText.value != ""){
			subTitle_form.pageNo.value = 1;
		}
		
		$("input[name=searchText]").val("");
		
		
		subTitle_form.action = "${pageContext.request.contextPath}/boards";
		subTitle_form.submit();
		
		//alert(subTitle_form.category.value + " 카테고리로 이동");
	}
	
	function chk_search(){		
		subTitle_form.pageNo.value = 1;
		
		subTitle_form.action = "${pageContext.request.contextPath}/boards";
		subTitle_form.submit();
		
		alert($("input[name=searchText]").val() + " 검색");
	}
	
	
</script>