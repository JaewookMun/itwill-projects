<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
h1 {
	font-size: 24px;
	line-height: 30px;
	font-weight: 700;
	position: relative;
	letter-spacing: -0.4px;
	color: #08b2f5;
	margin-bottom: 10px;
}

.up {
	width: 30px;
	height: 3px;
	background: #08b2f5;
	position: relative;
	display: inline-block;
	margin-bottom: 10px;
}

table {
	width: 100%;
	border: 1px solid #ddd;
	border-collapse: collapse;
}

th {
	text-align: center;
	font-size: 15px;
	font-weight: 300;
	line-height: 24px;
	padding: 14px 24px;
	vertical-align: middle;
	font-color: black;
	background-color: #08b2f5;
	border: 1px solid #ddd;
}

td, th {
	wight: 190px;
	text-align: center;
	font-size: 10px;
	font-weight: 300;
	line-height: 24px;
	padding: 14px 24px;
	vertical-align: middle;
}
</style>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
function modifyMember() {
	
	/* if (f.name.value == "") {
		alert("이름을 입력해주세요.");
		return false;
	}
	 */
	// id.action = "${pageContext.request.contextPath}/admin/modifyMember";
	alert("modify");
	document.getElementById("modifyForm").action ="${pageContext.request.contextPath}/updateStatus";
	//document.getElementById("modifyBtn").type="submit";
	document.getElementById("modifyForm").submit();
}
</script>
<body bgcolor=#ddd text=#000000 leftmargin=0 topmargin=0 marginwidth=0
	marginheight=0>
	<br>
	<div class="wrap">
		<div class="container">
			<table>
				<tr>
					<td></td>
					<td>
						<table>
							<tr>
								<td><b>회원수정</b></td>
							</tr>
						</table> <br>

						<form id="modifyForm">
							<input type="hidden" name="id" value="${member.id }">
							<table>
								<tr>
									<td>아이디</td>
									<td>${member.id }</td>
								</tr>
								<tr>
									<td>이름</td>
									<td>
									${member.name }
									<input type="text" name="name" value="${member.name }">
									</td>
								</tr>
								<tr>
									<td>등급</td>
									<td><select name="status">
											<option value="1"
												<c:if test="${member.status==1 }">selected</c:if>>일반회원</option>
											<option value="9"
												<c:if test="${member.status==9 }">selected</c:if>>관리자</option>
									</select></td>
								</tr>
							</table>
						</form> <br>

						<table>
							<tr>
								<td><button type="button" id="modifyBtn"
									onclick="modifyMember();">수정</button>
									<input type="button"
									value="목록"
									onClick="location.href='${pageContext.request.contextPath}/memberList;'">
								</td>
							</tr>
						</table>

					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>
