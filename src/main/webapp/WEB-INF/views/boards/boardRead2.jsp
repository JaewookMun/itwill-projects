<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/index2..css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/trail.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/board.css"/>">


</head>
<body>
	<div class="wrap">


		<div class="container">

			<div class="sub_wrap">
				<div class="sub_tit">
					<h1>커뮤니티</h1>
					<div class="under"></div>
				</div>

				<!------------------------콘텐츠 시작-------------------------------->
				<div class="contents_wrap">
					<div class="commu_btn_area">
						<ul>
							<li class="commu_btn_on"><a
								href="/trail/kor/board/board_list.asp?fk_idx=8">소식 게시판</a></li>
							<li class="commu_btn"><a
								href="/trail/kor/board/board_list.asp?fk_idx=12">뉴스룸</a></li>
							<li class="commu_btn"><a
								href="/trail/kor/board/board_list.asp?fk_idx=3">뉴스레터</a></li>
							<li class="commu_btn"><a
								href="/trail/kor/board/board_list.asp?fk_idx=6">자료실</a></li>
							<!--<li class="commu_btn"><a href="/trail/kor/board/board_list.asp?fk_idx=11">웹진</a></li>-->
							<li class="commu_btn"><a
								href="/trail/kor/board/board_list.asp?fk_idx=5">올레꾼 이야기</a></li>
						</ul>
					</div>


					<div class="board_view">
						<div class="read_header">
							<div class="view_tit mb_10">
								${boardForm.title }
								<%--
							11코스(신평곶자왈),12코스(녹남봉) 숲길 나무전도
							 --%>
							</div>

							<ul>
								<li>${boardForm.userName } <%--
								조이연
								 --%> <span class="bar">|</span>${boardForm.date } <%--
								2021-08-23 
								--%>
								</li>
							</ul>
						</div>
						<div class="read_body cf">

							<!--
															<div class="view_cont">여름휴가 일정에 맞추어 작년에 이어 올레길을 걷고 있는데 길안내 표시물들이 더욱 보강되고 <br/>완벽해진것 같아 아무런 불편없이 걸을 수 있어 감사했습니다.<br/><br/><br/><br/>10,11코스 시작점 올레안내소 직원분들의 친절한 안내도 너무 감사드립니다. <br/>8/21,8/22 이틀간은 빗줄기 맞으며 걸었는데 나름대로 행복한 걸음이었습니다.<br/><br/><br/><br/>올레지기분들의 노고에 감사 드리면서<br/>비바람 탓인지 숲길에 나무가 전도되어 길을 막은곳이 두군데 있어 제보드립니다.<br/><br/><br/><br/>1.신평곶자왈 "오찬이궤" 해설판 옆<br/>2.녹남봉에서 산경도예 하산길</div>
															-->
							<div class="view_cont">
							${boardForm.content } 
								<%--
							여름휴가 일정에 맞추어 작년에 이어 올레길을 걷고 있는데 길안내
								표시물들이 더욱 보강되고 완벽해진것 같아 아무런 불편없이 걸을 수 있어 감사했습니다. 10,11코스 시작점
								올레안내소 직원분들의 친절한 안내도 너무 감사드립니다. 8/21,8/22 이틀간은 빗줄기 맞으며 걸었는데 나름대로
								행복한 걸음이었습니다. 올레지기분들의 노고에 감사 드리면서 비바람 탓인지 숲길에 나무가 전도되어 길을 막은곳이
								두군데 있어 제보드립니다. 1.신평곶자왈 "오찬이궤" 해설판 옆 2.녹남봉에서 산경도예 하산길
 								--%>
							</div>

							<%--
							<img src="/upload/olleperson/2021823_214856_1.jpg">
							<img src="/upload/olleperson/2021823_214856_2.jpg">
							<img src="/upload/olleperson/2021823_214856_3.jpg">
								 --%>
						</div>


						<div class="btn_area02">
							<div class="btn_list02"
								onclick="location.href='/jeju/boards'">목록으로</div>
							<div class="btn_list03" onclick="chk_modify(${boardForm.no});">수정하기</div>
																	
						</div>
						
						<div class="comment_area">
							<div>

								<form name="myform" method="post" action="">
									<input type="hidden" name="refer_url"
										value="/trail/kor/board/board_view.asp^fk_idx=5!search_idx=7637!page=1">
									<input type="hidden" name="comment_mode" value="input">
									<input type="hidden" name="board_idx" value="7637"> <input
										type="hidden" name="session_idx" value="151342"> <input
										type="hidden" name="comment_idx" value="">

									<div class="reply_input_box02">
										<textarea name="c_comment" class="reply_text_box_style"
											placeholder="댓글을 남기기 위해서는 로그인이 필요합니다." style="resize: none;"></textarea>
										<div class="reply_btn" onclick="chk_comm();">등록</div>
									</div>
								</form>
							</div>
							<div>
								<div class="comment_wrap">
									<div class="comment_txt">
										<h3>
											<span>김용찬 ㅣ</span> 2021-08-25
										</h3>

										<p></p>
										<h4>11코스 올레지기 김용찬입니다. 현장 답사 후 탐사팀의 도움으로 제거하여 통행에 불편함이 없도록
											조치했습니다. 빠른 제보에 감사드립니다.</h4>
										<p></p>

									</div>
								</div>

							</div>
						</div>
					</div>
				</div>

			</div>

		</div>

	</div>
</body>


<script type="text/javascript">
	function chk_modify(boardNo) {

		alert("글을 수정합니다3");
		//if(memberNo == "현재로그인중인 번호와 일치하는지"){
			//그렇지 않으면 return
		//}
		
		myform.method = "get";
		myform.action = "/boards/"+boardNo+"/modify";
		alert("/boards/"+memberNo+"/modify");

		myform.send();
		alert("글을 수정합니다3");

	}
</script>

</html>