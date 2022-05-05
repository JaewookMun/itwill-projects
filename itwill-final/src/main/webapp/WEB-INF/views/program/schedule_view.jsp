<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<link rel="stylesheet" href="<c:url value="/css/schedule.css"/>" type="text/css"/>

		<c:if test="${programInfo.programType!=1 }">
			<%-- 프로그램 설명 영역 --%>
			<div id="programInfoContainer">
				<div id="programInfo">
					${programInfo.programDescription }
				</div>
			</div>
		</c:if>
		
		<%-- 프로그램 타이틀 --%>
		<div class="view-header">
			<div class="veiw-title mb_10">${scheduleInfo.scheduleTitle }</div>
			<ul>
				<li>정환사단<span class="bar">|</span>${fn:substring(scheduleInfo.schedulePostDate,0,10) }</li>
			</ul>
		</div>			
		
		<%-- 프로그램 본문내용 --%>
		<div class="view-body">
			<c:if test="${programInfo.programType!=1 }">
			<table class="info-table">
				<tr>
					<td class="col-01">코스</td>
					<td class="col-02" style="border-top:1px solid #f3f3f3;">${scheduleInfo.scheduleCourse }</td>
				</tr>
				<tr>
					<td class="col-01">출발시간</td>
					<td class="col-02">${scheduleInfo.departureDatetime }</td>
				</tr>
				<tr>
					<td class="col-01">출발장소</td>
					<td class="col-02">${scheduleInfo.departureLocation }</td>
				</tr>
				<tr>
					<td class="col-01">자원봉사자(인솔자)</td>
					<td class="col-02">${scheduleInfo.volunteer }</td>
				</tr>
				<tr>
					<td class="col-01">준비물</td>
					<td class="col-02">${scheduleInfo.preparation }</td>
				</tr>
			</table>
			</c:if>
			
			<div class="content-area">
				<%-- 공지사항 --%>
				${scheduleInfo.scheduleContent }
			</div>
			
			<c:if test="${programInfo.programType!=1 && programInfo.programType!=4}">
				<div id="noticeBox">
					<%-- 안내사항 내용 --%>
					${programInfo.programInstruction }
				</div>
			</c:if>	
			
			<div id="participate">
				<div class="p-area-1">
					<div class="partial-area-left">
						<form id="applyForm" name="applyForm" method="post" 
							action="${pageContext.request.contextPath }/program/schedule_view/participant/${scheduleInfo.scheduleNo }">
							<h2>
								신청인원
								<span>(본인포함)</span>
							</h2>
							<input id="partNo"  name="participantNo" type="text"><span>명</span>
							<button type="button" id="joinBtn" onclick="checkValid();">참가신청</button>
						</form>
					</div>
					<div class="partial-area-right">
						<div class="area_subtext">
							<ul class="red_list ">
								<li>참가인원 수는 숫자로만 표기 해 주세요.</li>
								<li>본인 포함 총 2인까지만 동행으로 신청 할 수 있습니다.</li>
								<li>3인 이상 단체는 ‘길동무’를 이용해 주세요.&nbsp;&nbsp;
								<div class="con_btn02" onclick="javascript:location.href='${pageContext.request.contextPath }/program/companion'">길동무 알아보기&nbsp;&nbsp;&gt; </div></li>
							</ul>
						</div>
					</div>
				</div>
				
				<div class="p-area-2">
					<div id="applierList">
						<div class="sub_bull02" style="text-align: left !important;">
							<span style="margin-left: 14px;">
								참가 신청자 리스트 / 
							</span>
							<%-- 임시 설정값 --%>
							<h3>현재 참가 신청인원 ${totalAttendance }명</h3>
						</div>
						<c:forEach var="participantInfo" items="${participantInfoList }">
							<div class="info_box_01">
								<div class="info_user">
									<div class="profile_img"><img src="${pageContext.request.contextPath }/images/member/${participantInfo.member.memberImg}" onerror="this.src='${pageContext.request.contextPath }/images/program/no_img_j.jpg'"></div>
								</div>
								<div class="unit_info">
									<ul>
									<li>${participantInfo.member.name }</li>
									<li> 신청인원 :<p> ${participantInfo.participant.participantNo } 명</p></li>
									</ul>
								</div>
							</div>
						</c:forEach>
						
					</div>
				</div>
			</div>
			
			<div id="commentArea">
				<form id="commentForm" method="post"
					action="${pageContext.request.contextPath }/program/schedule_view/comment/${scheduleInfo.scheduleNo }">
					<input type="hidden" name="refNo" value="0">
					<h3 class="comment_title">문의 댓글</h3>
					
					<div class="comment_input_box">
						<textarea rows="5" cols="100" id="commentContent" name="commentContent" class="comment-box-style" placeholder="댓글을 남기기 위해서는 로그인이 필요합니다." style="resize: none;"></textarea>
						<button type="button" id="commentBtn" onclick="addComment();">등록</button>
					</div>
				</form>
			
				<div id="commentBox">
					<h2>문의 리스트</h2>
					
					<%-- batch processing for collections --%>
					<c:forEach var="commentInfo" items="${commentInfoList }">
						<c:choose>
							<c:when test="${commentInfo.comment.reLevel == 1 }">
								<div class="reply_txt02">
									<div class="reply_a_box">답변</div>
									<div class="reply_a_area">
										<h3><span>${commentInfo.member.name } ㅣ</span> ${fn:substring(commentInfo.comment.commentDate,0,10) }</h3>
										<div class="modify">
											<ul></ul>
										</div>
									</div>
									<span class="reply_txt02_a">${commentInfo.comment.commentContent }</span>
								</div>
							</c:when>
							<c:otherwise>
								<div class="reply_txt">
									<h3><span>${commentInfo.member.name } ㅣ</span> ${fn:substring(commentInfo.comment.commentDate,0,10) }</h3>
										<div class="modify">
											<ul>
												<li class="modify_btn"><a href="javascript:checkAnswer(${commentInfo.comment.commentNo });">답변</a></li>
											</ul>
										</div>
										<p></p>
											<h4>${commentInfo.comment.commentContent }</h4>
										<p></p>
									
									<div class="reply_txt02" id="answer${commentInfo.comment.commentNo }" style="display:none;">
										<form action="${pageContext.request.contextPath }/program/schedule_view/comment/${scheduleInfo.scheduleNo }" 
											method="post" style="width: 100%">
											<input type="hidden" name="refNo" value="${commentInfo.comment.commentNo }">
											<textarea id="answerContent${commentInfo.comment.commentNo }" name="answer" class="reply_text_box_style" placeholder="답변을 남기기 위해서는 로그인이 필요합니다." style="resize:none;"></textarea>
											<button id="replyBtn${commentInfo.comment.commentNo }" type="button" class="reply_btn" onclick="addAnswer(${commentInfo.comment.commentNo });">등록</button>
										</form>
									</div>
								</div>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					
				</div>
			</div>
		</div>
		
		<div style="text-align: left;">
			<a id="toList" href="${pageContext.request.contextPath }/program/schedule">목록으로</a>				
		</div>

	<script type="text/javascript">
	// 같은 사용자가 참가신청을 다시할 시 발생
	function getMessage(){
		var isNull=${empty(message)};
		if(!isNull){
			alert('${message}');
			
			// location.href="${pageContext.request.contextPath}/program/schedule_view/${scheduleKey}";
		}
	}
	getMessage();
	
	function isLogin(message){
		var isNotLogin=${empty(loginMember)};
		
		if(isNotLogin){
			alert(message);
			location.href="${pageContext.request.contextPath}/member/login";
			return;
		}
	}
	
	function checkValid(){
		if(isLogin("참가신청을 하기 위해서는 로그인이 필요합니다.")){
			return;	
		} else if (document.getElementById("partNo").value==""){
			alert("입력된 신청인원이 없습니다. 신청인원을 확인해주세요.");
			document.getElementById("partNo").focus();
			return;
		}
		
		if(applyForm.participantNo.value > 2){
			alert("본인 포함 총 2인까지만 동행으로 신청 할 수 있습니다.");
			applyForm.participantNo.focus();
			return;
		}
		
		document.getElementById("joinBtn").type="submit";
	}
	
	function checkAnswer(commentNo) {
		var id="answer"+commentNo;
		
		var replyList = document.getElementsByClassName("reply_txt02");
		// 초기화 처리
		for(i=0; i<replyList.length; i++){
			
			if(replyList[i]==document.getElementById(id)) continue;
			replyList[i].classList.remove("on");
		}
		
		// 댓글 작성을 위해 댓글작성 블럭 display: block 처리
		document.getElementById(id).classList.toggle("on");
		
	}

	function addComment(){
		
		if(!confirm("입력하신 내용을 댓글로 등록하시겠습니까?")){
			return;
		}
		
		isLogin("댓글을 남기기 위해서는 로그인이 필요합니다.");
		if(document.getElementById("commentContent").value==""){
			alert("댓글 내용을 입력해주시길 바랍니다.");
			return;
		}
		
		document.getElementById("commentBtn").type="submit";
	}
	
	function addAnswer(commentNo) {

		if(!confirm("입력된 내용을 답변으로 등록하시겠습니까?")){
			return;
		}
		
		isLogin("답변을 남기기 위해서는 로그인이 필요합니다.");
				
		var areaId="answerContent"+commentNo;
		if(document.getElementById(areaId).value==""){
			alert("답변 내용을 입력해주시길 바랍니다.");
			return;
		}
		
		var replyId="replyBtn"+commentNo;
		document.getElementById(replyId).type="submit";
	}
	
	</script>
