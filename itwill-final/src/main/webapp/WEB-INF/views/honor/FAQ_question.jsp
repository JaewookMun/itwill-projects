<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>



<style type="text/css">


html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    vertical-align: baseline;
    background: transparent;
}

.wrap {
    width: 100%;
    height: auto;
    position: relative;
    font-family: 'Noto Sans KR', sans-serif;
}

table {
    border-collapse: collapse;
    border-spacing: 0;
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

.contents_wrap {
    width: 100%;
    height: auto;
    position: relative;
    display: inline-block;
    margin-top: 50px;
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
    text-align: center;
}

.board_view {
    width: 100%;
    height: auto;
    position: relative;
    display: inline-block;
    color: #555555;
    font-weight: 300;
}


h1 {
    display: block;
    font-size: 2em;
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
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

table.write_table {
    width: 100%;
    height: auto;
    margin: 10px 0px;
    background-color: #fff;
    border-top: 2px solid #78808c;
}

table.write_table td {
    text-align: center;
    font-size: 14px;
    font-weight: 300;
    line-height: 24px;
    vertical-align: middle;
    border-bottom: 1px solid #ddd;
    border-right: none;
    color: #555;
}

table.write_table, table.write_table td {
    text-align: center;
    padding: 14px;
    vertical-align: middle;
    overflow-x: auto;
}

table {
    display: table;
    border-collapse: separate;
    box-sizing: border-box;
    text-indent: initial;
    border-spacing: 2px;
    border-color: grey;
}

table {
    border-collapse: collapse;
    border-spacing: 0;
}

table.write_table th {
    width: 20%;
    height: 68px;
    line-height: 26px;
    font-size: 15px;
    font-weight: 400;
    text-align: center;
    vertical-align: middle;
    border-bottom: 1px solid #ddd;
    background-color: #f3f3f3;
    border-right: none;
    color: #333;
    padding: 6px;
}

input[type="text"], select {
    display: table-cell;
    vertical-align: middle;
    height: 32px;
    line-height: 25px;
    padding: 0 10px;
    background: #fff;
    box-sizing: border-box;
    border: 1px solid #ddd;
    color: #333;
    font-weight: normal;
}

.txt_in {
    width: 100%;
    height: 40px;
    padding: 5px 10px;
    font-size: 15px;
    border: 1px solid #bbb;
    color: #666;
    vertical-align: middle;
}

.join_info  input, textarea, fieldset input{
   width:100%;
   height:50px;
   border:1px solid #ddd;
   display: inline-block;
   margin-bottom:10px;
   color: #666;
   font-size: 15px;
   font-weight:300;
   padding:10px;
   line-height : normal;  /* line-height 초기화 */
   border-radius: 0;  /* iSO 둥근모서리 제거 */
   clear: both; 
   outline-style: none;  /* 포커스시 발생하는 효과 제거 */
   -webkit-appearance: none;  /* 브라우저별 기본 스타일링 제거 */
   -moz-appearance: none;
   appearance: none;
} 

.btn_write_area {
    width: 100%;
    height: 40px;
    position: relative;
    display: inline-block;
    border: 0px solid red;
    margin: 0 auto;
    margin-top: 30px;
    left: 50%;
    transform: translate(-50%, 0%);
    float: right;
}

.btn_write_cancle:hover{
	display:inline-block;
	color:#fff; 
	text-decoration: none;
	background-color: #d55b60;
}

.btn_write_cancle {
    font-size: 15px;
    font-weight: 400;
    width: 160px;
    height: 40px;
    line-height: 40px;
    text-align: center;
    color: #fff;
    background-color: #78808c;
    position: relative;
    display: inline-block;
    margin: 0 auto;
    cursor: pointer;
    margin-right: 4px;
}

.btn_write_save:hover{
	display:inline-block;
	color:#fff; 
	text-decoration: none;
	background-color: #3e8de2;
}

.btn_write_save {
    font-size: 15px;
    font-weight: 400;
    width: 160px;
    height: 40px;
    line-height: 40px;
    text-align: center;
    color: #fff;
    background-color: #08b2f5;
    position: relative;
    display: inline-block;
    margin: 0 auto;
    cursor: pointer;
    float: right;
}


@media screen and (max-width: 980px)
.sub_wrap, .sub_wrap03 {
    width: 90%;
    height: auto;
    position: relative;
    margin: 0 auto;
    padding: 0px;
    padding-top: 40px;
    margin-bottom: 80px;
    border: 0px solid red;
}
</style>

</head>
<body>
   

   <div class="wrap">
    
      
 
      <div class="sub_wrap">
         <div class="sub_tit"><h1>FAQ</h1><div class="under"></div></div>

         	
            <div class="contents_wrap">
                           
               <div class="board_view">
               <div class="con_txt02"><h1>문의하기</h1></div>
               <form name="f" method="post" action="${pageContext.request.contextPath}/FAQ">
               <input type="hidden" name="faq_questionNum" value="${faq_questionNum}">
               <input type="hidden" name="name" value="${member.name}">
               <input type="hidden" name="id" value="${member.id}">
                                    

               <div class="board_write">
                  <div class="table_wrap">
                     <table class="write_table">
 
                     <tr>
                     <th><label for="subject">제목</label></th>
                     <td colspan="4"><input type="text" name="title"class="txt_in" value="${faq_board.title}" placeholder="제목을 입력하세요"></td>
                     </tr>

                     <tr>
                     <th>이름</th>
                     <td>${member.name}</td>
                     <th>이메일</th>
                     <td>${member.id}</td>
                     </tr>

                     <tr>
                     <th>내용</th>
                     <td colspan="4">
                     <div class="substance ">
                     <label for=""></label>
                     <textarea name="content" style="height:200px; resize:none;">${faq_question.content}</textarea> 
                     </div>
                     </td>
                     </tr>
                     </table>      
                  </div>
               <div class="btn_write_area">
                  <div class="btn_write_cancle" onclick="location.href='${pageContext.request.contextPath }/FAQ_question'">취소</div>
                     <button id="submitBtn" type="button" class="btn_write_save" onclick="chk_form();">완료</button>
                  </div>
               </div>
            </form>
         </div>
      </div>
   </div>   
   </div>

<script type="text/javascript">

var obj = document.f;
function chk_form(){
	var isTrue=true;
	
	if (obj.title.value==""){
		alert("제목을 입력바랍니다.");
		isTrue= false;
		
	}
	if (obj.content.value==""){
		alert("내용을 입력바랍니다.");
		isTrue= false;
	}
	
	document.getElementById("submitBtn").setAttribute("type", "submit");
	return isTrue;
}	

</script>



