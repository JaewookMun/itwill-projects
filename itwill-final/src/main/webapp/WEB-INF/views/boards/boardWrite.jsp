<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="board_view">
	<div class="board_write">
		<div class="table_wrap">
			<form name="f" method="post" action="" enctype="multipart/form-data">
				<input type="hidden" name="memberNo" value="${loginMember.no} "> <input
					type="hidden" name="userName" value="${loginMember.name} "> <input
					type="hidden" name="member_email" value="${loginMember.id} ">
				<input type="hidden" name="mode" value="input"> <input
					type="hidden" name="search_idx" value="">

				<table class="write_table">
					<tr>
						<th>이름</th>
						<td>${loginMember.name}</td>
						<th>이메일</th>
						<td>${loginMember.id}</td>
					</tr>

					<tr>
						<th><label for="subject">제목</label></th>
						<td colspan="4"><input type="text" name="title"
							value="${boardForm.title}" class="txt_in" placeholder="제목을 입력하세요">
							<c:choose>
							<c:when test="${loginMember.status == 9 }"> 
								공지<input type="checkbox" name="notice" value="" placeholder="체크박스"> </td>
								카테고리<input type="number" min="1" max="5" name="category" value="${boardForm.category}" placeholder="카테고리입력1"></td>
							</c:when>
							<c:when test="${loginMember.status != 9 }"> 
								<input type="hidden" name="category" value="${boardForm.category}" placeholder="카테고리입력2"></td>
							</c:when>

							<c:otherwise>
							</c:otherwise>
							</c:choose>
					</tr>

					<tr>
						<th>내용</th>
						<td colspan="4">
							<div class="substance">
								<label for=""></label>
								<textarea name="content"
									style="height: 200px; width: 700px; resize: none;">${boardForm.content}</textarea>
							</div>
						</td>
					</tr>

					<tr>
						<th>첨부파일</th>
						<td colspan="4" style="font-size: 13px; text-align: left;">
						<input type="file" class="attachment" name="file"><br />
						</td>
					</tr>
				</table>
			</form>
		</div>
		<div class="btn_write_area">
			<div class="btn_write_cancle" onclick="location.href='/jeju/boards'">취소</div>
			<c:if test="${boardForm.content==''}">
				<div class="btn_write_save" onclick="chk_form();">등록</div>
			</c:if>
			<c:if test="${boardForm.content!=''}">
				<div class="btn_write_save"
					onclick="chk_formModify(${boardForm.no});">수정</div>
			</c:if>

			<div class="btn_write_cancle"
				onclick="location.href='/jeju/boards/${boardForm.no}/remove'">삭제</div>

		</div>
	</div>
</div>


<script type="text/javascript">
	function chk_form() {
		//alert("글을 작성합니다0");
		//if (b_title.name.value == "") {
		//alert("제목은 필수로 입력해주세요");
		//b_title.name.focus();
		//return false;
		//}
		//alert("글을 작성합니다1");
		if($("input:checkbox[name='notice']").is(":checked")){
			alert("체크되어잇음");
			$("input:checkbox[name='notice']").val("notice");
		}
		
		f.action = "write";
		f.submit();
		//alert("글을 작성합니다3");

	}
	function chk_formModify(no) {
		f.action = "";
		f.submit();
		alert(f.action);
	}
</script>



</html>