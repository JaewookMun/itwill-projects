<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>    

<style type="text/css">


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


.contents_wrap {
    width: 100%;
    height: auto;
    position: relative;
    display: inline-block;
    margin-top: 50px;
    border: 0px solid red;
}


.table_wrap{
    display: block;
    width: 100%;
    overflow-x: auto;
	margin-top:30px;

}

table.write_table, table.write_table td{
			text-align:center;
			padding:14px;
			vertical-align:middle;
			overflow-x:auto;
        }

        table.write_table{
            width:100%;
            height:auto;
			margin:10px 0px;
            background-color:#fff;
			border-top:2px solid #78808c;
		}
		
		table.write_table th{
			width:20%;
			height:68px;
			line-height:26px;
			font-size:15px;
			font-weight:400;
			text-align:center;
			vertical-align:middle;
			border-bottom:1px solid #ddd;
			background-color:#f3f3f3;
			border-right:none;
			color:#333;
            padding:6px; 
        }
		

        table.write_table td{
			text-align:center;
			font-size:14px;
			font-weight:300;
			line-height:24px;
			vertical-align:middle;
			border-bottom:1px solid #ddd;
			border-right:none;
			color:#555;
			}

		table.write_table img{
			width:auto;
			height:auto;
		}
		
		 table.write_table td.td01{
			text-align:center;
			font-size:14px;
			font-weight:500;
			line-height:24px;
			vertical-align:middle;
			color:#333;
		}

		table.write_table td a:hover{text-decoration:underline #aaa; }


table.file_table, table.file_table td{
			text-align:center;
			padding:14px;
			vertical-align:middle;
			overflow-x:auto;
        }

        table.file_table{
            width:100%;
            height:auto;
			margin:10px 0px;
            background-color:#fff;
			border:1px solid #ddd;
		}
		
		table.file_table th{
			width:20%;
			height:68px;
			line-height:26px;
			font-size:15px;
			font-weight:400;
			text-align:center;
			vertical-align:middle;
			border-right:1px solid #ddd;
			background-color:#f3f3f3;
			color:#333;
            padding:6px; 
        }
		

        table.file_table td{
			text-align:center;
			font-size:14px;
			font-weight:300;
			line-height:24px;
			vertical-align:middle;
			color:#555;
			padding-left:24px; 
        }


		table.file_table td a:hover{text-decoration:underline #aaa; }

		.file_list{
			width:100%;
			height:auto;
			position:relative;
			vertical-align:middle;
			display:block;
		}

		.file_list li{
			width:auto;
			height:auto;
			font-size:14px;
			font-weight:300;
			line-height:26px;
			margin-left:12px;
			vertical-align:middle;
			text-align:left;
		}

		.file_list li:before{
			content: url("/trail/kor/images/sub/file.png");
			position: absolute;
			top: 0;
			left: 0;
		}


.txt_in {
	width:100%;
    height:40px;
    padding: 5px 10px;
    font-size: 15px;
    border: 1px solid #bbb;
    color: #666;
    vertical-align: middle;
}

.substance { 
	width: 100%;
	height:200px;
	display: block;
	border: 0px solid #ddd;
	background:#fff;
}

.file_up{
 width:100%;
 position:relative;
 display:inline-block;
 border:0px solid red;
 vertical-align: left;
}

.attachment {
	width:72%;
    height:30px;
    border: 0px solid #bbb;
    position:relative;
	display:inline-block;
	margin-bottom:10px;
	float:left;
}

input[type="file"] {
    -webkit-appearance: initial;
    background-color: initial;
    cursor: default;
    align-items: baseline;
	height: inherit;
    color: inherit;
    text-align: start !important;
    padding: initial;
}

.attachment p{
    font-size: 13px;
	line-height:20px;
    color: #666;

}

.btn_file_area{
	width:30%;
	height:30px;
	position:absolute;
	display:inline-block;
	margin-left:-16%;
	border:0px solid red;
}

.file_del {
	width:40px;
	height:20px;
	line-height:20px;
	color:#fff;
	background:#78808c;

	position:relative;
	display:inline-block;
	cursor: pointer;
	font-size:12px;
	font-weight:300;
	margin-left:10px;
	margin-bottom:10px;
}

.file_del:hover {background:#E6505C;}

.btn_file{
	width:49%;
	height:30px;
	line-height:30px;
	color:#fff;
	background:#aaa;
	position:relative;
	display:inline-block;
	cursor: pointer;
	margin-left:0%;
}

.btn_file:hover{color:#fff; background:#78808c;}

.btn_file_del{
	width:49%;
	height:30px;
	line-height:30px;
	color:#fff;
	background:#aaa;
	position:relative;
	display:inline-block;
	cursor: pointer;
	margin-left:0%;
}


.btn_file_del:hover{background:#78808c;}

.btn_write_area{
	width:100%;
	height:40px;
	position:relative;
	display:inline-block;
	border:0px solid red;
	margin:0 auto;
	margin-top:30px;
	left: 50%;
	transform:translate(-50%, 0%);
	float:right;
}

.btn_write_area02{
	width:100%;
	height:40px;
	position:relative;
	display:inline-block;
	border:0px solid red;
	margin:0 auto;
	text-align:center;
	margin-top:30px;
}

.btn_write_save{
	font-size: 15px;
	font-weight:400;
	width: 160px;
	height:40px;
	line-height: 40px;
	text-align: center;
	color:#fff;
	background-color:#08b2f5;
	position:relative;
	display:inline-block;
	margin:0 auto;
	cursor: pointer;
	float:right;
	margin-left: 8px
}

.btn_write_save:hover{background-color:#008fe9;}

.btn_write_cancle{
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
	margin-right:4px;
}

.btn_write_cancle:hover{background-color:#E6505C;}


</style>


</head>
<body>
	

	<div class="wrap">
	
		<div class="sub_wrap">
				<div class="sub_tit"><h1>명예의 전당</h1><div class="under"></div></div>

				
									
				<div class="board_view">

				<div class="board_write">
				<div class="table_wrap">
							<form name="f" method="post" enctype="multipart/form-data" >
							<input type="hidden" name="honorNum" value="${honor.num}">
							<input type="hidden" name="member_name" value="${member.name}">
							<input type="hidden" name="member_id" value="${member.id}">
							<input type="hidden" name="mode" value="input">
							<input type="hidden" name="search_idx" value="">

							<table class="write_table">
							<tr>
							<th><label for="subject">제목</label></th>
							<td colspan="4"><input type="text" name="title" value="${honor.title}" class="txt_in" placeholder="제목을 입력하세요"></td>
							</tr>

							<tr>
							<th><label for="subject">기간</label></th>
							<td colspan="4"><input type="text" name="finish" value="${honor.finish}" class="txt_in" placeholder="기간을 입력하세요"></td>
							</tr>

							<tr>
							<th>내용</th>
							<td colspan="4">
										<div class="substance">
										<label for=""></label>
										<textarea name="content" class="txt_in" placeholder="내용을 입력하세요" style="height:200px; width:100%; resize:none; border: 1px solid #bbb;">${honor.context}</textarea> 
										</div>
							</td>
							</tr>

							<tr>
							<th>첨부파일</th>
							<td colspan="4" style="font-size:13px; text-align:left;">
							<input type="file" class="attachment" name="file" value="${honor.file}"><br/>
													
													
							</td>
							</tr>
							</table>
							</form>
				</div>
				<div class="btn_write_area">
							<div class="btn_write_cancle" onclick="javascript:location.href='${pageContext.request.contextPath }/honor_write'">취소</div>
							
							<!--  <div class="btn_write_cancle" onclick="location.href='/jeju/boards/${honor.num}/remove'">삭제</div> -->
							
							<div class="btn_write_save" onclick="chk_form();">등록</div>
							<!-- <div class="btn_write_save" onclick="chk_formModify(${honor.num});">수정</div>	-->					

				</div>
			</div>
		</div>
		</div>
		</div>


<script type="text/javascript">

var obj = document.f;
function chk_form(){
			
		
			if (obj.title.value==""){
						alert("제목을 입력바랍니다.");
						obj.b_title.focus();
						return;
			}
			
			if (obj.finish.value==""){
						alert("기간을 입력바랍니다.");
						obj.b_title.focus();
						return;
			}
			
			if (obj.content.value==""){
						alert("내용을 입력바랍니다.");
						obj.b_title.focus();
						return;
			}
			
			if (obj.file
					.value==""){
				alert("파일을 추가하기 바랍니다.");
				obj.b_title.focus();
				return;
			}	
			
			var msg = confirm("등록 하시겠습니까?")
			if (msg== true){
						obj.action = "${pageContext.request.contextPath}/honor_one";
						obj.submit();
			}
			
}

//삭제
function chk_file(search_idx, idx ){
			var msg = confirm("선택한 파일을 삭제 하시겠습니까?")
			if (msg== true){
						location.href = "board_file_proc.asp?search_idx="+search_idx+"&delete_idx="+idx+"";
			}
}

//삭제
function chk_del(idx){
			var msg = confirm("게시글을 삭제 하시겠습니까?\n복구할 수 없습니다.")
			if (msg== true){
						location.href = "board_delete.asp?search_idx="+idx+"";
			}
}

//




</script>
</html>