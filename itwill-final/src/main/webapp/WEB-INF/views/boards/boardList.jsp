<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach var="boardNoticeForm" items="${boardNoticeList }">

	<a onclick="showBoard(${boardNoticeForm.no});">
		<div class="list_txt_area02">
			<div class="list_tit">

				<div class="commu_img_none">
					<div class="label_notice02">공지</div>
					${boardNoticeForm.title } <span class="date">${boardNoticeForm.date }</span>
					<span class="date">${boardNoticeForm.userName }</span>
				</div>
			</div>
		</div>
	</a>
</c:forEach>


<c:forEach var="boardForm" items="${boardList }">
	<a onclick="showBoard(${boardForm.no});">
		<div class="list_txt_area02">
			<div class="list_tit">
				<div class="commu_img_none">
					${boardForm.title } <span class="date">${boardForm.date }</span> <span
						class="date">${boardForm.userName }</span>
				</div>
			</div>
		</div>
	</a>
</c:forEach>

<div class="commu_foot">
	<div class="pagination">
		<span class="first_arw" onclick="pageMove(1);"> </span> <span
			class="prev_arw" onclick="pageMove(${pager.prevPage});"></span>

		<c:forEach var="pageNo" begin="${pager.startPage}"
			end="${pager.endPage}">

			<span class="numberPage" onclick="pageMove(${pageNo});">${pageNo}</span>

		</c:forEach>

		<span class="next_arw" onclick="pageMove(${pager.nextPage});">
		</span> <span class="end_arw" onclick="pageMove(${pager.totalPage});">
		</span>

		<%-- 숫자 넣은 버전
						<span class="first_arw" onclick=""> 1</span> 
						<span class="prev_arw">${pager.prevPage}</span>
						<span class="next_arw"> ${pager.nextPage}</span>
						<span class="end_arw" onclick="">  ${pager.totalPage}</span> --%>

	</div>
</div>

<script type="text/javascript">

	var num= document.getElementsByClassName("class");
	//num.classList.

	function write() {
		//alert("글작성페이지로1");
		//hiddenForm.action = "${pageContext.request.contextPath}/boards/write";
		//hiddenForm.submit();
		subTitle_form.action = "${pageContext.request.contextPath}/boards/write";
		subTitle_form.submit();
		//alert("글작성페이지로2");
	}
	
	function pageMove(pageNo){
		subTitle_form.pageNo.value = pageNo;
		subTitle_form.action = "${pageContext.request.contextPath}/boards";
		subTitle_form.submit();
		//alert(f.category.value + "카테고리 " + pageNo + "페이지로 이동");
		
	}

	function showBoard(boardNo){
		subTitle_form.action = "${pageContext.request.contextPath}/boards/"+boardNo;
		subTitle_form.submit();
		//alert(boardNo + "게시글로 이동");
	}

</script>

<script type="text/javascript">
	//alert(subTitle_form.category.value);
	
	commu_btn(subTitle_form.category.value);
	//commu_number(tempNum);
	
	//start();
	
	//var start = function(){
	//	let tempNum= '<c:out value="${pageNo}"/>
	//	commu_number(tempNum);
	//}
	
</script>

</html>