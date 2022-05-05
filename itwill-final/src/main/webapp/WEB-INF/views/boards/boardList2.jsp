<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="contents_wrap">
	<%-- 
	<c:forEach var="boardForm" items="${boardList }">
						<tr align="center">
							<td width="100">${boardForm.no }</td>
							<td width="100">${boardForm.title }</td>
							<td width="150">${boardForm.userName }</td>
							<td width="250">${boardForm.content }</td>
						</tr>
					</c:forEach>
 	--%>

	<c:forEach var="boardForm" items="${boardList }">
		<div class="commu_img_none">
			<a onclick="showBoard(${boardForm.no});">
				<div class="list_txt_area02">
					<div class="list_tit">
						<%-- 공지 5개만 상단으로 --%>
						<div class="label_notice02">공지</div>
						${boardForm.title } <span class="date">${boardForm.date }</span> <span
							class="date">${boardForm.userName }</span>
					</div>
			</a>
		</div>
	</c:forEach>


	<%--
	<div class="commu_img_none">
	<a href="board_view.asp?fk_idx=8&search_idx=7673&page=1">
							<div class="list_txt_area02">
								<div class="list_tit">
									<div class="label_notice02">공지</div>
									[공지] 제목 <span class="date">2021-09-13</span>
								</div>
							</div>
						</a>
					</div>
					 --%>									

</div>
<div class="commu_foot">
	<div class="pagination">
		<span class="first_arw" onclick="pageMove(1);"> </span> <span
			class="prev_arw" onclick="pageMove(${pager.prevPage});"></span>

		<c:forEach var="pageNo" begin="${pager.startPage}"
			end="${pager.endPage}">
			<c:if test="${pageNo == pager.pageNo}">
				<span class="prev_arw"> </span>
			</c:if>
			<span onclick="pageMove(${pageNo});">${pageNo}</span>
			<c:if test="${pageNo == pager.pageNo}">
				<span class="next_arw"> </span>
			</c:if>
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
	
	
	function move_category(no) {
		//$('#category').val(no);
		//$("input[name=category]").val(no);
		f.category.value = no;
		f.pageNo.value = 1;
		f.action = "${pageContext.request.contextPath}/boards";
		f.submit();
		alert(f.category.value + " 카테고리로 이동");
	}
	
	function write() {
		alert("글작성페이지로1");
		//hiddenForm.action = "${pageContext.request.contextPath}/boards/write";
		//hiddenForm.submit();
		f.action = "${pageContext.request.contextPath}/boards/write";
		f.submit();
		alert("글작성페이지로2");
	}
	
	function pageMove(pageNo){
		f.pageNo.value = pageNo;
		f.action = "${pageContext.request.contextPath}/boards";
		f.submit();
		alert(f.category.value + "카테고리 " + pageNo + "페이지로 이동");
	}

	function showBoard(boardNo){
		f.action = "${pageContext.request.contextPath}/boards/"+boardNo;
		f.submit();
		alert(boardNo + "게시글로 이동");
	}

</script>


</html>