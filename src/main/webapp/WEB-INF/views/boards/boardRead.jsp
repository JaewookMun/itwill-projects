<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 

<!DOCTYPE html>
<html>

<div class="board_view">
	<div class="read_header">
		<div class="view_tit mb_10">
			${boardForm.title }
			<%--11코스(신평곶자왈),12코스(녹남봉) 숲길 나무전도--%>
		</div>

		<ul>
			<li>${boardForm.userName }<%--조이연--%> <span class="bar">|</span>${boardForm.date }
				<%--2021-08-23--%>
			</li>
		</ul>
	</div>
	<div class="read_body cf">
		<div class="view_cont">
			${boardForm.content }
		</div>
		<c:if test="${fileBoard != null}">
			<img src="${pageContext.request.contextPath }/upload/boards/${fileBoard.upload}">
		</c:if>
	</div>

	<c:if test="${fileBoard != null}">
		<span class="prev_arw"> </span>

		<div class="table_wrap">
			<table class="file_table">
				<tr>
					<th>첨부파일</th>
					<td colspan="4" style="text-align: left;">
						<div class="file_list">
							<ul>
								<li><a href="/jeju/download/${fileBoard.no}">${fileBoard.origin }</a></li>
							</ul>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</c:if>

	<div class="btn_area02">
		<div class="btn_list02" onclick="location.href='/jeju/boards'">목록으로</div>
		<c:if test="${loginMember.status == 9 || loginMember.no == boardForm.memberNo }">
			<div class="btn_list03"
				onclick="location.href='/jeju/boards/${boardNo}/modify'">수정하기</div>
		</c:if>	
		</div>

	<div class="comment_area">
		<div>
			<form name="commentform" method="post" action="">
				<input type="hidden" name="refer_url" value="/"> <input
					type="hidden" name="comment_mode" value="input"> <input
					type="hidden" name="boardNo" value="${boardNo}"> <input
					type="hidden" name="memberNo" value="${loginMember.no}"> <input
					type="hidden" name="session_idx" value=""> <input
					type="hidden" name="comment_idx" value="">

				<div class="reply_input_box02">
					<textarea name="content" class="reply_text_box_style"
						placeholder="댓글을 남기기 위해서는 로그인이 필요합니다." style="resize: none;"></textarea>
					<div class="reply_btn" onclick="chk_comm();">등록</div>
				</div>
			</form>
		</div>

		<div>
			<c:forEach var="commentForm" items="${commentList }">
				<div class="comment_wrap">
					<div class="comment_txt">
						<h3>
							<span>${commentForm.memberName } ㅣ</span> ${commentForm.date }
						</h3>
						<p></p>
						<h4>${commentForm.content }</h4>
						<p></p>
					</div>
				</div>

			</c:forEach>
		</div>
	</div>

</div>

<script type="text/javascript">
	function chk_modify(boardNo) {

		//alert("글을 수정합니다");
		//if(memberNo == "현재로그인중인 번호와 일치하는지"){
		//그렇지 않으면 return
		//}

		commentform.method = "get";
		commentform.action = "/boards/" + boardNo + "/modify";
		alert("/boards/" + boardNo + "/modify");

		commentform.submit();
		//alert("글을 수정합니다3");

	}

	function chk_comm() {
		if(commentform.memberNo.value == ""){
			alert("로그인을 해주세요");
			return false;
		}
			
		commentform.action = "comment/add";
		commentform.submit();
		//alert("댓글을 작성합니다" + myform.boardNo.value + ", "
		//		+ myform.memberNo.value);

	}
</script>

</html>