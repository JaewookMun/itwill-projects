<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>

<style type="text/css">

.honor_area{
	width:100%;
	height:auto;
	position:relative;
	display:inline-block;
	margin-top:0px;
	border:0px solid red;
}

.honor_list_wrap02{
	width:100%;
	height:auto;
	margin:0 auto;
	margin-top:30px;
	position:relative;
	display:flex;
	flex-wrap: wrap;
}

.honor_form02{
	width:223px;
	height:auto;
	position:relative;
	display:inline-block;
	margin-right:35px;
	margin-top:14px;
	text-align:center;
	cursor:pointer;
	border:0px solid red;

}

.honor_img02{
	width:223px;
	height:223px;
	position:relative;
	display:inline-block;
	border:1px solid #ddd;
	overflow:hidden;
}

.honor_img02 img{
	width:223px;
	height:223px;
	object-fit: cover;

}

.honor_form02:nth-child(4n){ margin-right:0px; }

.honor_tab{
	width:50%;
	height:50px;
	border:1px solid #ddd;
	font-size:16px;
	font-weight:300;
	line-height:48px;
	margin-left:-1px;
	right:0;
	color:#888;
	display:inline-block;
	float:left;
}

.honor_tab_on{
	width:50%;
	height:50px;
	border:1px solid #08b2f5;
	font-size:16px;
	line-height:48px;
	margin-left:-1px;
	right:0;
	background:#08b2f5;
	font-weight:500;
	color:#fff;
	display:inline-block;
	float:left;
}

.honor_tab:hover{
	background:#08b2f5;
	border:1px solid #08b2f5;
	font-weight:500;
	color:#fff;
}


.sub_wrap, .sub_wrap03 {
    width: 1100px;
    height: auto;
    position: relative;
    margin: 0 auto;
    padding: 50px;
    margin-bottom: 80px;
    border: 0px solid red;
}


.sub_tit {
    width: 100%;
    height: auto;
    padding-top: 20px;
    position: relative;
    display: inline-block;
    text-align: center;
    margin: 0 auto;
    border: 0px solid red;
}

.sub_tit h1 {
    width: 100%;
    font-size: 36px;
    font-weight: 500;
    position: relative;
    display: block;
    margin-bottom: 10px;
    text-align: center;
}

.under {
    width: 60px;
    height: 6px;
    background: #08b2f5;
    position: relative;
    display: inline-block;
    margin: 0 auto;
}

.sub_tit p {
    width: 100%;
    font-size: 15px;
    font-weight: 300;
    line-height: 24px;
    position: relative;
    display: block;
    color: #555;
    margin-top: 10px;
    text-align: center;
}

.sub_tit {
    width: 100%;
    height: auto;
    padding-top: 20px;
    position: relative;
    display: inline-block;
    text-align: center;
    margin: 0 auto;
    border: 0px solid red;
}

.contents_wrap {
    width: 100%;
    height: auto;
    position: relative;
    display: inline-block;
    margin-top: 50px;
    border: 0px solid red;
}

.tap_area {
    width: 100%;
    height: 51px;
    position: relative;
    text-align: center;
    z-index: 100;
}

.tap_on02:hover, .tap02:hover{
	display:block;
	color:#fff; 
	text-decoration: none;
	background-color: #08b2f5;
}

.tap_on02 {
    width: 33%;
    height: 50px;
    border: 1px solid #08b2f5;
    font-size: 16px;
    line-height: 48px;
    margin-left: -1px;
    right: 0;
    background: #08b2f5;
    font-weight: 500;
    color: #fff;
    display: inline-block;
    float: left;
}

.tap02 {
    width: 33%;
    height: 50px;
    border: 1px solid #ddd;
    font-size: 16px;
    font-weight: 300;
    line-height: 48px;
    margin-left: -1px;
    right: 0;
    color: #888;
    display: inline-block;
    float: left;
}

.select_area{
	width:100%;
	height:auto;
	position: relative;
	display:inline-block;
	border-bottom:1px solid #ddd;
	padding-bottom:10px;
	margin-bottom:10px;
}

.select_area p{
    float: left;
    width: 50%;
}

.search {
    width: 100%;
    height: auto;
    margin: 0 auto;
    padding: 50px 0px 30px 0px;
    position: relative;
    border-bottom: 2px solid #08b2f5;
}

.search input {
    width: 33%;
    height: 40px;
    padding-left: 15px;
    border: 1px solid #ccc;
    outline: none;
    position: relative;
    display: inline-block;
}
.search input:focus {background-color: #f3f3f3;}

.search_ico {
    width: 32px;
    height: 32px;
    background: url(${pageContext.request.contextPath }/images/honor/serch_icon.png) no-repeat 50% 50%;
    border: none;
    margin-left: 28%;
    position: absolute;
    cursor: pointer;
    margin-top: -32px;
    right: 0;
    left: 0;
}
.search .search_ico:hover {background: url('${pageContext.request.contextPath }/images/honor/serch_icon1.png') no-repeat 50% 50%;}


.btn_write{
	font-size: 15px;
	font-weight:400;
	width: 160px;
	height:40px;
	line-height: 40px;
	text-align: center;
	color:#fff;
	background-color:#78808c;
	position:relative;
	display:inline-block;
	margin-top:0px;
	cursor: pointer;
	float:right;
}

.btn_write02{
	font-size: 15px;
	font-weight:400;
	width: 160px;
	height:40px;
	line-height: 40px;
	text-align: center;
	color:#fff;
	background-color:#78808c;
	position:relative;
	display:inline-block;
	margin:0 auto;
	cursor: pointer;
}

.btn_write:hover{background-color:#08b2f5;}
.btn_write02:hover{background-color:#08b2f5;}


em {font-style:normal;}
select::-ms-expand{display:none;} 

input[type="text"], select {
	display:table-cell; 
	vertical-align:middle;
	height:32px;
	line-height:25px; 
	padding:0 10px;  
	background:#fff;
	box-sizing:border-box;
	border:1px solid #ddd;
	color:#333; 
	font-weight:normal;
}

.search_input {
	border:0px solid red;
	width:50%;
	overflow:hidden;
	position: relative;
	display:inline-block;
	margin-bottom:20px;
}

.search_input > * {float:left; margin-right:5px;}


.search_input option {
	color:#333; 
	padding:5px 10px;
	border:none; 
	background:#fff;
}


.honor_area {
    width: 100%;
    height: auto;
    position: relative;
    display: inline-block;
    margin-top: 0px;
    border: 0px solid red;
}

.line_bt {
    width: 100%;
    padding: 20px 0px;
    display: block;
    border-bottom: 1px solid #ddd;
}

.commu_foot {
    margin-top: 30px;
    position: relative;
    margin: 0 auto;
}


.pop_area{
	width:100%;
	height:100%;
	position:absolute;
	left:0%;
	top:0%;
	background-color: rgba(0,0,0,0.2);
	z-index:1000;
}

.fe_popup{
	width:90%;
	height:auto;
	position:relative;
	display:inline-block;
	border:0px solid #78808c; 
	padding:30px;
	left:50%;
	top:60%;
	transform:translate(-50%, -50%);
	background:#fff;
}

.honor_popup{
	width:90%;
	height:auto;
	position:relative;
	display:inline-block;
	border:0px solid #78808c; 
	padding:30px;
	left: 50%;
	top:50%;
	transform:translate(-50%, -50%);
	background:#fff;
}

.honor_close:hover {background-color:#08b2f5;}

.honor_close {
    width: 40px;
    height: 40px;
    position: relative;
    display: inline-block;
    background: url(${pageContext.request.contextPath }/images/honor/notice_close.png) no-repeat center center;
    background-color: #555;
    margin-right: -30px;
    margin-top: -30px;
    float: right;
}

.honor_layer {
    width: 100%;
    height: 100%;
    position: relative;
    display: inline-block;
    border: 0px solid red;
    padding: 0px 30px 30px 30px;
    background: #fff;
    text-align: center;
}

.honor_head {
    width: 100%;
    height: auto;
    position: relative;
    display: inline-block;
    padding-top: 0px;
    border-bottom: 2px solid #78808c;
}

.con_txt02 h1 {
    font-size: 24px;
    line-height: 40px;
    font-weight: 700;
    position: relative;
    letter-spacing: -0.4px;
    text-align: center;
    color: #08b2f5;
    margin-bottom: 30px;
}

honor_text02 {
    width: 100%;
    font-size: 16px;
    line-height: 26px;
    color: #333;
    font-weight: 500;
    position: relative;
    display: inline-block;
    text-align: center;
    margin: 30px 0 20px 0;
}

.honor_text02 p {
    font-size: 18px;
    font-weight: 300;
    line-height: 26px;
    margin: 10px 0px;
    text-align: center;
    color: #08b2f5;
}

.honor_text_b02 {
    font-size: 18px;
    line-height: 26px;
    font-weight: 300;
    color: #555;
    text-align: center;
    margin: 10px 0 0 0;
    letter-spacing: -0.2px;
    display: -webkit-box;
    -webkit-box-orient: vertical;
}

.honor_pic img {
    max-width: 800px;
    margin-top: 30px;
    width: auto;
    height: auto;
    position: relative;
    display: inline-block;
    text-align: center;
    background-image: auto;
}

.pagination {
    top: 30px;
    position: relative;
    display: inline-block;
    left: 50%;
    transform: translate(-50%, 0%);
}

.pagination span {
    float: left;
    width: 34px;
    height: 34px;
    line-height: 32px;
    text-align: center;
    font-size: 15px;
    font-weight: 300;
    border-radius: 50%;
    color: #555;
    transition: background-color .3s;
    border: 0px solid #ddd;
    margin: 0 4px;
    cursor: pointer;
}

.pagination .selected {
    float: left;
    width: 34px;
    height: 34px;
    line-height: 32px;
    text-align: center;
    font-size: 15px;
    font-weight: 300;
    border-radius: 50%;
    color: #08b2f5;
    transition: background-color .3s;
    border: 0px solid #ddd;
    margin: 0 4px;
    cursor: default;
}




.pagination span.active {
    background-color: #08b2f5;
    color: white;
    border: 1px solid #08b2f5;
}

#change a {
	float: right;
	margin-right: 10px;
	margin-bottom: 10px;
}

#change::after {
	content: "";
	display: block;
	clear: both;
}

.page-move {
	cursor: pointer;
}

.page-move:hover {
	color: #08b2f5;
}

</style>

</head>
<body>

<div class="wrap" id="wrap">
		
	<div id="pageNumDiv"></div>
	<div class="sub_wrap">
		<div class="sub_tit"><h1>명예의 전당</h1><div class="under"></div><p>제주올레 425km 26코스를 모두 걸은 완주자들</p></div>
		

			
		<div class="contents_wrap">
		<form name="f" method="post" action="honor">

			<div class="tap_area">
				<ul>
					<li class="tap_on02"><a href="${pageContext.request.contextPath }/honor_one/1">명예의 전당</a></li>
					<li class="tap02"><a href="${pageContext.request.contextPath }/honor_two">100km 완주 도전</a></li>
					<li class="tap02"><a href="${pageContext.request.contextPath }/honor_three">425km 완주 도전</a></li>
				</ul> 
			</div>
									
			<!-- 서치 -->
			<div class="search">
				<input type="text" name="search_text" value="">
				<div class="search_ico" onclick="chk_search();"></div>
				<c:if test="${member.status == '9' }">
					<div class="btn_write" onclick="location.href='${pageContext.request.contextPath }/honor_write'">글쓰기</div>
				</c:if>
			</div>
									

			<!-- 명예의 전당 사진 -->						
			<div class="honor_area">
				<div class="honor_list_wrap02">	
					
					
					<c:forEach var="honorItem" items="${honorList}">										
						<div class="honor_form02" id="${honorItem.num}" onclick="exePop(${honorItem.num});">
							<div class="honor_img02" ><img id="img${honorItem.num}" src="${pageContext.request.contextPath }/upload/honor/${honorItem.upload}" onerror=""/></div>
							
							<div id="text${honorItem.num}" class="honor_text" >
								<span>${honorItem.title}</span>
								<p>${honorItem.finish}</p>
								<div class="honor_text_b">
									${honorItem.content}
								</div>
								
							</div>
						</div>
					</c:forEach>
					
										
				</div>
			</div>
			
			<div class="commu_foot">
				<div class="pagination">
					<c:if test="${pager.pageNum!=1 }">
						<span class="page-move" onclick="pageMove(${pager.pageNum-1});">prev</span> 
					</c:if>
					
					<c:forEach var="i" begin="${pager.startPage}" end="${pager.endPage}">
						<c:choose>
							<c:when test="${i==pager.pageNum }">
								<span class="numberPage selected">${i }</span>
							</c:when>
							<c:otherwise>
								<span class="numberPage" onclick="pageMove(${i});">${i}</span>
							</c:otherwise>
						</c:choose>
					</c:forEach>
			
					<c:if test="${pager.pageNum!=pager.endPage }">
						<span class="page-move" onclick="pageMove(${pager.pageNum+1});">next</span> 
					</c:if>
				</div>
			</div>
			
		</form>
		</div>

 </div>

			<%-- 팝업창 --%>
	<div  id="popWindow" class="pop_area" style="display:none;" >
		<div class="honor_popup" onclick="close_popup()">
			<div class="honor_close" onclick="close_popup()"></div>
				<div class="honor_layer">
					<div class="honor_head">
						<div class="con_txt02">
						<h1><span id="val_title"></span></h1>	
							
							<c:if test="${member.status == '9' }">
							<div id="change">
								<a class="removeBtn">삭제</a>
								<a class="changBtn">수정</a>
							</div>
							</c:if>
							
						</div>
					</div>
					<div class="honor_text02">
						완주기간
						<p><span id="val_date"></span></p>
						소감
						<div id="honorContent" class="honor_text_b02"></div>
					</div>
				<div class="honor_pic"><img src="" id="valImg" onerror=""/></div>
			</div>
		</div>
	</div>

</div>





<script type="text/javascript">



function exePop(num){
	
	$("#popWindow").css("display","block");
	var title=$("#text"+num).children("span").text();
	var finish=$("#text"+num).children("p").text();
	var content=$("#text"+num).children("div").text();
	var imgSrc=$("#img"+num).attr("src");
	var num=$("#"+num).attr("id");
	
	$("#val_title").text(title);
	$("#val_date").text(finish);
	$("#honorContent").text(content);
	$("#valImg").attr("src", imgSrc);
	
	$(".removeBtn").attr("href", "${pageContext.request.contextPath}/removeHonor/"+num);
	$(".changeBtn").attr("href", "${pageContext.request.contextPath}/updateHonor/"+num);

	$(".removeBtn").click(function() {
		if(confirm("삭제하시겠습니까?")) {
			alert("삭제되었습니다.");
		} else {
			event.preventDefault();
			return;
		}
	})
	
	$(".changeBtn").click(function() {
		confirm("변경하시겠습니까?");
	})
	
	
	//document.getElementById("wrap").style.backgroundColor="#08b2f5";
	
	/*
	//var val = eval("document.f.text_"+idx+".value");

	
	$(".honor_text_b02").text(val);
	$("#val_img").attr("src","/upload/honor/"+img);
	$("#body").css({"background":"url(/trail/images/common/pop_bg.png)"});
	
	$("#val_title").text= ${honorItem.title};
	*/
	
}
	



function close_popup(){
	$(".honor_popup").css("display","none");
	$(".pop_area").css("display","none");
	$("#body").css({"background":""}); 
	location.reload();
}


function chk_search(){
	document.f.submit();
}

function pageMove(pageNum){
	location.href="${pageContext.request.contextPath}/honor_one/"+pageNum;
}


	</script>
</body>





