<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript">


/* 클릭 시 해당 올레길로 이동 */
function chk_route(num){
			//location.href="/trail/kor/olle_trail/default.asp?search_idx="+num;
			location.href="${pageContext.request.contextPath }/courses?category="+num;
}


$(function(){
			/* 올레길 상세정보 숨김 */
			$(".route_text").css("display","none");

			/** 처음 나오게 *************************************************************************/ 
			/* random_route = (Math.floor(Math.random() * 21))+1;
			$("#route_img"+random_route).css("background","url('img/map/route_img"+random_route+"_r.png')no-repeat");
			$("#route_txt_area"+random_route).css("display","block");
			$(".route_"+random_route).css("background","url('img/gil/main_route"+random_route+"_r.png')");
			$(".route_label"+random_route).css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff"); */


			/*************************************************************************************/ 
			/*route 1*/
			$("#route_img1").hover(function(){
						//$("#route_img1").css("background","url('img/map/route_img1_r.png')no-repeat");
						$("#route_img1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img1_r.png')no-repeat");
					//	$("#route_img1").css("transform","scale(1.1)");
						$(".route_1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route1_r.png')");
						$("#route_txt_area1").css("display","block");
						$(".route_label1").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img1.png')no-repeat");
					//	$("#route_img1").css("transform","scale(1)");
						$(".route_1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route1.png')");
						$("#route_txt_area1").css("display","none");
						$(".route_label1").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 1-1*/
			$("#route_img1-1").hover(function(){
						$("#route_img1-1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img1-1_r.png')no-repeat");
						$(".route_1-1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route1-1_r.png')");
						$("#route_txt_area1-1").css("display","block");
						$(".route_label1-1").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img1-1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img1-1.png')no-repeat");
						$(".route_1-1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route1-1.png')");
						$("#route_txt_area1-1").css("display","none");
						$(".route_label1-1").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 2*/
			$("#route_img2").hover(function(){
						$("#route_img2").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img2_r.png')no-repeat");
						$(".route_2").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route2_r.png')");
						$("#route_txt_area2").css("display","block");
						$(".route_label2").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img2").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img2.png')no-repeat");
						$(".route_2").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route2.png')");
						$("#route_txt_area2").css("display","none");
						$(".route_label2").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 3*/
			$("#route_img3").hover(function(){
						$("#route_img3").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img3_r.png')no-repeat");
						$(".route_3").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route3_r.png')");
						$("#route_txt_area3").css("display","block");
						$(".route_label3").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img3").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img3.png')no-repeat");
						$(".route_3").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route3.png')");
						$("#route_txt_area3").css("display","none");
						$(".route_label3").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 4*/
			$("#route_img4").hover(function(){
						$("#route_img4").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img4_r.png')no-repeat");
						$(".route_4").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route4_r.png')");
						$("#route_txt_area4").css("display","block");
						$(".route_label4").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img4").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img4.png')no-repeat");
						$(".route_4").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route4.png')");
						$("#route_txt_area4").css("display","none");
						$(".route_label4").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 5*/
			$("#route_img5").hover(function(){
						$("#route_img5").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img5_r.png')no-repeat");
						$(".route_5").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route5_r.png')");
						$("#route_txt_area5").css("display","block");
						$(".route_label5").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img5").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img5.png')no-repeat");
						$(".route_5").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route5.png')");
						$("#route_txt_area5").css("display","none");
						$(".route_label5").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 6*/
			$("#route_img6").hover(function(){
						$("#route_img6").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img6_r.png')no-repeat");
						$(".route_6").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route6_r.png')");
						$("#route_txt_area6").css("display","block");
						$(".route_label6").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img6").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img6.png')no-repeat");
						$(".route_6").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route6.png')");
						$("#route_txt_area6").css("display","none");
						$(".route_label6").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 7*/
			$("#route_img7").hover(function(){
						$("#route_img7").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img7_r.png')no-repeat");
						$(".route_7").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route7_r.png')");
						$("#route_txt_area7").css("display","block");
						$(".route_label7").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img7").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img7.png')no-repeat");
						$(".route_7").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route7.png')");
						$("#route_txt_area7").css("display","none");
						$(".route_label7").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 7-1*/
			$("#route_img7-1").hover(function(){
						$("#route_img7-1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img7-1_r.png')no-repeat");
						$(".route_7-1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route7-1_r.png')");
						$("#route_txt_area7-1").css("display","block");
						$(".route_label7-1").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img7-1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img7-1.png')no-repeat");
						$(".route_7-1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route7-1.png')");
						$("#route_txt_area7-1").css("display","none");
						$(".route_label7-1").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 8*/
			$("#route_img8").hover(function(){
						$("#route_img8").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img8_r.png')no-repeat");
						$(".route_8").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route8_r.png')");
						$("#route_txt_area8").css("display","block");
						$(".route_label8").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img8").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img8.png')no-repeat");
						$(".route_8").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route8.png')");
						$("#route_txt_area8").css("display","none");
						$(".route_label8").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 9*/
			$("#route_img9").hover(function(){
						$("#route_img9").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img9_r.png')no-repeat");
						$(".route_9").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route9_r.png')");
						$("#route_txt_area9").css("display","block");
						$(".route_label9").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img9").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img9.png')no-repeat");
						$(".route_9").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route9.png')");
						$("#route_txt_area9").css("display","none");
						$(".route_label9").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});
			
			/*route 10*/
			$("#route_img10").hover(function(){
						$("#route_img10").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img10_r.png')no-repeat");
						$(".route_10").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route10_r.png')");
						$("#route_txt_area10").css("display","block");
						$(".route_label10").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img10").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img10.png')no-repeat");
						$(".route_10").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route10.png')");
						$("#route_txt_area10").css("display","none");
						$(".route_label10").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 10-1*/
			$("#route_img10-1").hover(function(){
						$("#route_img10-1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img10-1_r.png')no-repeat");
						$(".route_10-1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route10-1_r.png')");
						$("#route_txt_area10-1").css("display","block");
						$(".route_label10-1").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img10-1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img10-1.png')no-repeat");
						$(".route_10-1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route10-1.png')");
						$("#route_txt_area10-1").css("display","none");
						$(".route_label10-1").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 11*/
			$("#route_img11").hover(function(){
						$("#route_img11").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img11_r.png')no-repeat");
						$(".route_11").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route11_r.png')");
						$("#route_txt_area11").css("display","block");
						$(".route_label11").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img11").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img11.png')no-repeat");
						$(".route_11").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route11.png')");
						$("#route_txt_area11").css("display","none");
						$(".route_label11").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 12*/
			$("#route_img12").hover(function(){
						$("#route_img12").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img12_r.png')no-repeat");
						$(".route_12").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route12_r.png')");
						$("#route_txt_area12").css("display","block");
						$(".route_label12").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img12").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img12.png')no-repeat");
						$(".route_12").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route12.png')");
						$("#route_txt_area12").css("display","none");
						$(".route_label12").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 13*/
			$("#route_img13").hover(function(){
						$("#route_img13").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img13_r.png')no-repeat");
						$(".route_13").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route13_r.png')");
						$("#route_txt_area13").css("display","block");
						$(".route_label13").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img13").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img13.png')no-repeat");
						$(".route_13").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route13.png')");
						$("#route_txt_area13").css("display","none");
						$(".route_label13").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 14*/
			$("#route_img14").hover(function(){
						$("#route_img14").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img14_r.png')no-repeat");
						$(".route_14").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route14_r.png')");
						$("#route_txt_area14").css("display","block");
						$(".route_label14").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img14").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img14.png')no-repeat");
						$(".route_14").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route14.png')");
						$("#route_txt_area14").css("display","none");
						$(".route_label14").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 14-1*/
			$("#route_img14-1").hover(function(){
						$("#route_img14-1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img14-1_r.png')no-repeat");
						$(".route_14-1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route14-1_r.png')");
						$("#route_txt_area14-1").css("display","block");
						$(".route_label14-1").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img14-1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img14-1.png')no-repeat");
						$(".route_14-1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route14-1.png')");
						$("#route_txt_area14-1").css("display","none");
						$(".route_label14-1").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 15*/
			$("#route_img15").hover(function(){
						$("#route_img15").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img15_r.png')no-repeat");
						$(".route_15").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route15_r.png')");
						$("#route_txt_area15").css("display","block");
						$(".route_label15").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img15").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img15.png')no-repeat");
						$(".route_15").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route15.png')");
						$("#route_txt_area15").css("display","none");
						$(".route_label15").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});
	
			/*route 16*/
			$("#route_img16").hover(function(){
						$("#route_img16").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img16_r.png')no-repeat");
						$(".route_16").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route16_r.png')");
						$("#route_txt_area16").css("display","block");
						$(".route_label16").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img16").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img16.png')no-repeat");
						$(".route_16").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route16.png')");
						$("#route_txt_area16").css("display","none");
						$(".route_label16").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 17*/
			$("#route_img17").hover(function(){
						$("#route_img17").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img17_r.png')no-repeat");
						$(".route_17").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route17_r.png')");
						$("#route_txt_area17").css("display","block");
						$(".route_label17").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img17").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img17.png')no-repeat");
						$(".route_17").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route17.png')");
						$("#route_txt_area17").css("display","none");
						$(".route_label17").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 18*/
			$("#route_img18").hover(function(){
						$("#route_img18").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img18_r.png')no-repeat");
						$(".route_18").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route18_r.png')");
						$("#route_txt_area18").css("display","block");
						$(".route_label18").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img18").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img18.png')no-repeat");
						$(".route_18").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route18.png')");
						$("#route_txt_area18").css("display","none");
						$(".route_label18").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 18-1*/
			$("#route_img18-1").hover(function(){
						$("#route_img18-1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img18-1_r.png')no-repeat");
						$(".route_18-1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route18-1_r.png')");
						$("#route_txt_area18-1").css("display","block");
						$(".route_label18-1").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img18-1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img18-1.png')no-repeat");
						$(".route_18-1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route18-1.png')");
						$("#route_txt_area18-1").css("display","none");
						$(".route_label18-1").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 19*/
			$("#route_img19").hover(function(){
						$("#route_img19").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img19_r.png')no-repeat");
						$(".route_19").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route19_r.png')");
						$("#route_txt_area19").css("display","block");
						$(".route_label19").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img19").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img19.png')no-repeat");
						$(".route_19").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route19.png')");
						$("#route_txt_area19").css("display","none");
						$(".route_label19").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 20*/
			$("#route_img20").hover(function(){
						$("#route_img20").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img20_r.png')no-repeat");
						$(".route_20").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route20_r.png')");
						$("#route_txt_area20").css("display","block");
						$(".route_label20").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img20").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img20.png')no-repeat");
						$(".route_20").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route20.png')");
						$("#route_txt_area20").css("display","none");
						$(".route_label20").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 21*/
			$("#route_img21").hover(function(){
						$("#route_img21").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img21_r.png')no-repeat");
						$(".route_21").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route21_r.png')");
						$("#route_txt_area21").css("display","block");
						$(".route_label21").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img21").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img21.png')no-repeat");
						$(".route_21").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route21.png')");
						$("#route_txt_area21").css("display","none");
						$(".route_label21").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*************************************************************************************/ 
			/*route 1*/
			$(".route_1").hover(function(){
						$("#route_img1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img1_r.png')no-repeat");
					//	$("#route_img1").css("transform","scale(1.1)");
						$(".route_1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route1_r.png')");
						$("#route_txt_area1").css("display","block");
						$(".route_label1").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img1.png')no-repeat");
					//	$("#route_img1").css("transform","scale(1)");
						$(".route_1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route1.png')");
						$("#route_txt_area1").css("display","none");
						$(".route_label1").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 1-1*/
			$(".route_1-1").hover(function(){
						$("#route_img1-1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img1-1_r.png')no-repeat");
						$(".route_1-1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route1-1_r.png')");
						$("#route_txt_area1-1").css("display","block");
						$(".route_label1-1").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img1-1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img1-1.png')no-repeat");
						$(".route_1-1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route1-1.png')");
						$("#route_txt_area1-1").css("display","none");
						$(".route_label1-1").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 2*/
			$(".route_2").hover(function(){
						$("#route_img2").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img2_r.png')no-repeat");
						$(".route_2").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route2_r.png')");
						$("#route_txt_area2").css("display","block");
						$(".route_label2").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img2").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img2.png')no-repeat");
						$(".route_2").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route2.png')");
						$("#route_txt_area2").css("display","none");
						$(".route_label2").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 3*/
			$(".route_3").hover(function(){
						$("#route_img3").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img3_r.png')no-repeat");
						$(".route_3").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route3_r.png')");
						$("#route_txt_area3").css("display","block");
						$(".route_label3").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img3").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img3.png')no-repeat");
						$(".route_3").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route3.png')");
						$("#route_txt_area3").css("display","none");
						$(".route_label3").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 4*/
			$(".route_4").hover(function(){
						$("#route_img4").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img4_r.png')no-repeat");
						$(".route_4").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route4_r.png')");
						$("#route_txt_area4").css("display","block");
						$(".route_label4").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img4").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img4.png')no-repeat");
						$(".route_4").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route4.png')");
						$("#route_txt_area4").css("display","none");
						$(".route_label4").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 5*/
			$(".route_5").hover(function(){
						$("#route_img5").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img5_r.png')no-repeat");
						$(".route_5").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route5_r.png')");
						$("#route_txt_area5").css("display","block");
						$(".route_label5").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img5").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img5.png')no-repeat");
						$(".route_5").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route5.png')");
						$("#route_txt_area5").css("display","none");
						$(".route_label5").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 6*/
			$(".route_6").hover(function(){
						$("#route_img6").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img6_r.png')no-repeat");
						$(".route_6").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route6_r.png')");
						$("#route_txt_area6").css("display","block");
						$(".route_label6").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img6").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img6.png')no-repeat");
						$(".route_6").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route6.png')");
						$("#route_txt_area6").css("display","none");
						$(".route_label6").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 7*/
			$(".route_7").hover(function(){
						$("#route_img7").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img7_r.png')no-repeat");
						$(".route_7").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route7_r.png')");
						$("#route_txt_area7").css("display","block");
						$(".route_label7").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img7").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img7.png')no-repeat");
						$(".route_7").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route7.png')");
						$("#route_txt_area7").css("display","none");
						$(".route_label7").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 7-1*/
			$(".route_7-1").hover(function(){
						$("#route_img7-1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img7-1_r.png')no-repeat");
						$(".route_7-1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route7-1_r.png')");
						$("#route_txt_area7-1").css("display","block");
						$(".route_label7-1").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img7-1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img7-1.png')no-repeat");
						$(".route_7-1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route7-1.png')");
						$("#route_txt_area7-1").css("display","none");
						$(".route_label7-1").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 8*/
			$(".route_8").hover(function(){
						$("#route_img8").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img8_r.png')no-repeat");
						$(".route_8").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route8_r.png')");
						$("#route_txt_area8").css("display","block");
						$(".route_label8").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img8").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img8.png')no-repeat");
						$(".route_8").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route8.png')");
						$("#route_txt_area8").css("display","none");
						$(".route_label8").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 9*/
			$(".route_9").hover(function(){
						$("#route_img9").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img9_r.png')no-repeat");
						$(".route_9").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route9_r.png')");
						$("#route_txt_area9").css("display","block");
						$(".route_label9").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img9").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img9.png')no-repeat");
						$(".route_9").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route9.png')");
						$("#route_txt_area9").css("display","none");
						$(".route_label9").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});
			
			/*route 10*/
			$(".route_10").hover(function(){
						$("#route_img10").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img10_r.png')no-repeat");
						$(".route_10").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route10_r.png')");
						$("#route_txt_area10").css("display","block");
						$(".route_label10").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img10").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img10.png')no-repeat");
						$(".route_10").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route10.png')");
						$("#route_txt_area10").css("display","none");
						$(".route_label10").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 10-1*/
			$(".route_10-1").hover(function(){
						$("#route_img10-1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img10-1_r.png')no-repeat");
						$(".route_10-1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route10-1_r.png')");
						$("#route_txt_area10-1").css("display","block");
						$(".route_label10-1").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img10-1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img10-1.png')no-repeat");
						$(".route_10-1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route10-1.png')");
						$("#route_txt_area10-1").css("display","none");
						$(".route_label10-1").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 11*/
			$(".route_11").hover(function(){
						$("#route_img11").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img11_r.png')no-repeat");
						$(".route_11").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route11_r.png')");
						$("#route_txt_area11").css("display","block");
						$(".route_label11").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img11").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img11.png')no-repeat");
						$(".route_11").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route11.png')");
						$("#route_txt_area11").css("display","none");
						$(".route_label11").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 12*/
			$(".route_12").hover(function(){
						$("#route_img12").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img12_r.png')no-repeat");
						$(".route_12").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route12_r.png')");
						$("#route_txt_area12").css("display","block");
						$(".route_label12").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img12").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img12.png')no-repeat");
						$(".route_12").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route12.png')");
						$("#route_txt_area12").css("display","none");
						$(".route_label12").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 13*/
			$(".route_13").hover(function(){
						$("#route_img13").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img13_r.png')no-repeat");
						$(".route_13").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route13_r.png')");
						$("#route_txt_area13").css("display","block");
						$(".route_label13").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img13").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img13.png')no-repeat");
						$(".route_13").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route13.png')");
						$("#route_txt_area13").css("display","none");
						$(".route_label13").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 14*/
			$(".route_14").hover(function(){
						$("#route_img14").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img14_r.png')no-repeat");
						$(".route_14").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route14_r.png')");
						$("#route_txt_area14").css("display","block");
						$(".route_label14").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img14").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img14.png')no-repeat");
						$(".route_14").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route14.png')");
						$("#route_txt_area14").css("display","none");
						$(".route_label14").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 14-1*/
			$(".route_14-1").hover(function(){
						$("#route_img14-1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img14-1_r.png')no-repeat");
						$(".route_14-1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route14-1_r.png')");
						$("#route_txt_area14-1").css("display","block");
						$(".route_label14-1").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img14-1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img14-1.png')no-repeat");
						$(".route_14-1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route14-1.png')");
						$("#route_txt_area14-1").css("display","none");
						$(".route_label14-1").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 15*/
			$(".route_15").hover(function(){
						$("#route_img15").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img15_r.png')no-repeat");
						$(".route_15").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route15_r.png')");
						$("#route_txt_area15").css("display","block");
						$(".route_label15").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img15").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img15.png')no-repeat");
						$(".route_15").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route15.png')");
						$("#route_txt_area15").css("display","none");
						$(".route_label15").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});
	
			/*route 16*/
			$(".route_16").hover(function(){
						$("#route_img16").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img16_r.png')no-repeat");
						$(".route_16").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route16_r.png')");
						$("#route_txt_area16").css("display","block");
						$(".route_label16").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img16").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img16.png')no-repeat");
						$(".route_16").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route16.png')");
						$("#route_txt_area16").css("display","none");
						$(".route_label16").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 17*/
			$(".route_17").hover(function(){
						$("#route_img17").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img17_r.png')no-repeat");
						$(".route_17").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route17_r.png')");
						$("#route_txt_area17").css("display","block");
						$(".route_label17").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img17").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img17.png')no-repeat");
						$(".route_17").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route17.png')");
						$("#route_txt_area17").css("display","none");
						$(".route_label17").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 18*/
			$(".route_18").hover(function(){
						$("#route_img18").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img18_r.png')no-repeat");
						$(".route_18").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route18_r.png')");
						$("#route_txt_area18").css("display","block");
						$(".route_label18").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img18").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img18.png')no-repeat");
						$(".route_18").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route18.png')");
						$("#route_txt_area18").css("display","none");
						$(".route_label18").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 18-1*/
			$(".route_18-1").hover(function(){
						$("#route_img18-1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img18-1_r.png')no-repeat");
						$(".route_18-1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route18-1_r.png')");
						$("#route_txt_area18-1").css("display","block");
						$(".route_label18-1").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img18-1").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img18-1.png')no-repeat");
						$(".route_18-1").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route18-1.png')");
						$("#route_txt_area18-1").css("display","none");
						$(".route_label18-1").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 19*/
			$(".route_19").hover(function(){
						$("#route_img19").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img19_r.png')no-repeat");
						$(".route_19").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route19_r.png')");
						$("#route_txt_area19").css("display","block");
						$(".route_label19").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img19").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img19.png')no-repeat");
						$(".route_19").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route19.png')");
						$("#route_txt_area19").css("display","none");
						$(".route_label19").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 20*/
			$(".route_20").hover(function(){
						$("#route_img20").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img20_r.png')no-repeat");
						$(".route_20").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route20_r.png')");
						$("#route_txt_area20").css("display","block");
						$(".route_label20").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img20").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img20.png')no-repeat");
						$(".route_20").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route20.png')");
						$("#route_txt_area20").css("display","none");
						$(".route_label20").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});

			/*route 21*/
			$(".route_21").hover(function(){
						$("#route_img21").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img21_r.png')no-repeat");
						$(".route_21").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route21_r.png')");
						$("#route_txt_area21").css("display","block");
						$(".route_label21").css("background","#eb5f52").css("border","1px solid #eb5f52").css("color","#fff");

			},function(){
						$("#route_img21").css("background","url('${pageContext.request.contextPath }/images/main/map/route_img21.png')no-repeat");
						$(".route_21").css("background","url('${pageContext.request.contextPath }/images/main/map/main_route21.png')");
						$("#route_txt_area21").css("display","none");
						$(".route_label21").css("background","#fff").css("border","1px solid #ddd").css("color","#666");
			});
});


</script>

		<div class="map_wrap">
			<div class="container">
				<div class="map_area">

					<!---긴급------>
					<div class="siren">
						<div class="siren_red">
							<span> <img src="${pageContext.request.contextPath }/images/main/notice_siren.png">
								<p>긴급알림</p>
							</span>
						</div>
						<div class="siren_tit">
							<marquee>
								<h3>

									<a href="${pageContext.request.contextPath}/boards"
									style="padding-top: 11px;">
									올레길 안전수칙 안내</a>&nbsp;&nbsp;
								</h3>
							</marquee>
							<div class="siren_close" onclick="chk_bro();"></div>
						</div>
					</div>


					<script type="text/javascript">
					
					function chk_bro(){
								$(".siren").css("display", "none");
					}
					
					</script>

					<div class="map_txt">
						<p>꼬닥꼬닥 걸어, 함께 만든 제주올레 길</p>
						<h1>425km 26코스</h1>
					</div>

					<!-----와펜 이미지---->
					<div id="route_img1" onclick="chk_route('1');">
						<div class="route_label1">1코스</div>
					</div>

					<div id="route_img1-1" onclick="chk_route('2');">
						<div class="route_label1-1" style="margin-left: 10px;">
							1-1코스</div>
					</div>

					<div id="route_img2" onclick="chk_route('3');">
						<div class="route_label2">2코스</div>
					</div>

					<div id="route_img3" onclick="chk_route('4');">
						<div class="route_label3"
							style="margin-left: 2px; margin-top: 46px;">3코스</div>
					</div>

					<div id="route_img4" onclick="chk_route('6');">
						<div class="route_label4" style="margin-left: 26px;">4코스</div>
					</div>

					<div id="route_img5" onclick="chk_route('7');">
						<div class="route_label5" style="margin-left: 6px; margin-top: 33px;">5코스</div>
					</div>

					<div id="route_img6" onclick="chk_route('8');">
						<div class="route_label6">6코스</div>
					</div>

					<div id="route_img7" onclick="chk_route('9');">
						<div class="route_label7"
							style="margin-left: 2px; margin-top: 38px;">7코스</div>
					</div>

					<div id="route_img7-1" onclick="chk_route('10');">
						<div class="route_label7-1"
							style="margin-left: 4px; margin-top: 44px;">7-1코스</div>
					</div>

					<div id="route_img8" onclick="chk_route('11');">
						<div class="route_label8" style="margin-top: 38px;">8코스</div>
					</div>

					<div id="route_img9" onclick="chk_route('12');">
						<div class="route_label9"
							style="margin-left: 2px; margin-top: 40px;">9코스</div>
					</div>

					<div id="route_img10" onclick="chk_route('13');">
						<div class="route_label10"
							style="margin-left: 10px; margin-top: 28px;">10코스</div>
					</div>

					<div id="route_img10-1" onclick="chk_route('14');">
						<div class="route_label10-1"
							style="margin-left: 6px; margin-top: 38px;">10-1코스</div>
					</div>

					<div id="route_img11" onclick="chk_route('15');">
						<div class="route_label11"
							style="margin-left: -2px; margin-top: 48px;">11코스</div>
					</div>

					<div id="route_img12" onclick="chk_route('16');">
						<div class="route_label12" style="margin-top: 36px;">12코스</div>
					</div>

					<div id="route_img13" onclick="chk_route('17');">
						<div class="route_label13"
							style="margin-left: 2px; margin-top: 70px;">13코스</div>
					</div>

					<div id="route_img14" onclick="chk_route('18');">
						<div class="route_label14"
							style="margin-left: -5px; margin-top: 48px;">14코스</div>
					</div>

					<div id="route_img14-1" onclick="chk_route('19');">
						<div class="route_label14-1"
							style="margin-left: -2px; margin-top: 38px;">14-1코스</div>
					</div>

					<div id="route_img15" onclick="chk_route('20');">
						<div class="route_label15"
							style="margin-left: 24px; margin-top: 28px;">15코스</div>
					</div>

					<div id="route_img16" onclick="chk_route('22');">
						<div class="route_label16"
							style="margin-left: 10px; margin-top: 52px;">16코스</div>
					</div>

					<div id="route_img17" onclick="chk_route('23');">
						<div class="route_label17"
							style="margin-left: 12px; margin-top: 48px;">17코스</div>
					</div>

					<div id="route_img18" onclick="chk_route('24');">
						<div class="route_label18"
							style="margin-left: 12px; margin-top: 48px;">18코스</div>
					</div>

					<div id="route_img18-1" onclick="chk_route('25');">
						<div class="route_label18-1">18-1코스</div>
					</div>

					<div id="route_img19" onclick="chk_route('26');">
						<div class="route_label19"
							style="margin-left: 10px; margin-top: 48px;">19코스</div>
					</div>

					<div id="route_img20" onclick="chk_route('27');">
						<div class="route_label20"
							style="margin-left: 40px; margin-top: 14px;">20코스</div>
					</div>

					<div id="route_img21" onclick="chk_route('28');">
						<div class="route_label21"
							style="margin-left: -40px; margin-top: 16px;">21코스</div>
					</div>


					<!--텍스트 박스-->
					<div id="route_txt_area1" class="route_text">
						<div class="route_txt01">
							<p>
								시흥-광치기 올레<br>난이도: 중<br>총 길이: 15.1km, 4~5시간
							</p>
						</div>
					</div>
					<div id="route_txt_area1-1" class="route_text">
						<div class="route_txt01">
							<p>
								우도 올레<br>난이도: 중<br>총 길이: 11.3km, 4~5시간
							</p>
						</div>
					</div>
					<div id="route_txt_area2" class="route_text">
						<div class="route_txt01">
							<p>
								광치기-온평 올레<br>난이도: 중<br>총 길이: 15.2km, 4~5시간
							</p>
						</div>
					</div>
					<div id="route_txt_area3" class="route_text">
						<div class="route_txt01">
							<p>
								온평-표선 올레<br>난이도: 상<br>총 길이: 20.9km, 6~7시간
							</p>
						</div>
					</div>
					<div id="route_txt_area4" class="route_text">
						<div class="route_txt01">
							<p>
								표선-남원 올레<br>난이도: 중<br>총 길이: 19km, 5~6시간
							</p>
						</div>
					</div>
					<div id="route_txt_area5" class="route_text">
						<div class="route_txt01">
							<p>
								남원-쇠소깍 올레<br>난이도: 중<br>총 길이: 13.4km, 4~5시간
							</p>
						</div>
					</div>
					<div id="route_txt_area6" class="route_text">
						<div class="route_txt01">
							<p>
								쇠소깍-서귀포 올레<br>난이도: 하<br>총 길이: 11km, 3~4시간
							</p>
						</div>
					</div>
					<div id="route_txt_area7" class="route_text">
						<div class="route_txt01">
							<p>
								서귀포-월평 올레<br>난이도: 중<br>총 길이: 17.6km, 5~6시간
							</p>
						</div>
					</div>
					<div id="route_txt_area7-1" class="route_text">
						<div class="route_txt01">
							<p>
								서귀포터미널-서귀포 올레<br>난이도: 중<br>총 길이: 15.7km, 4~5시간
							</p>
						</div>
					</div>
					<div id="route_txt_area8" class="route_text">
						<div class="route_txt01">
							<p>
								월평-대평 올레<br>난이도: 중<br>총 길이: 19.6Km, 5~6시간
							</p>
						</div>
					</div>
					<div id="route_txt_area9" class="route_text">
						<div class="route_txt01">
							<p>
								대평-화순 올레<br>난이도: 상<br>총 길이: 6.7Km, 3~4시간
							</p>
						</div>
					</div>
					<div id="route_txt_area10" class="route_text">
						<div class="route_txt01">
							<p>
								화순-모슬포 올레<br>난이도: 중<br>총 길이: 15.6Km, 5~6시간
							</p>
						</div>
					</div>
					<div id="route_txt_area10-1" class="route_text">
						<div class="route_txt01">
							<p>
								가파도 올레<br>난이도: 하<br>총 길이: 4.2Km, 1~2시간
							</p>
						</div>
					</div>
					<div id="route_txt_area11" class="route_text">
						<div class="route_txt01">
							<p>
								모슬포-무릉 올레<br>난이도: 중<br>총 길이: 17.3Km, 5~6시간
							</p>
						</div>
					</div>
					<div id="route_txt_area12" class="route_text">
						<div class="route_txt02">
							<p>
								무릉-용수 올레<br>난이도: 중<br>총 길이: 17.5Km, 5~6시간
							</p>
						</div>
					</div>
					<div id="route_txt_area13" class="route_text">
						<div class="route_txt02" class="route_text">
							<p>
								용수-저지 올레<br>난이도: 중<br>총 길이: 15.9Km, 4~5시간
							</p>
						</div>
					</div>
					<div id="route_txt_area14" class="route_text">
						<div class="route_txt01" class="route_text">
							<p>
								저지-한림 올레<br>난이도: 중<br>총 길이: 19.1Km, 6~7시간
							</p>
						</div>
					</div>
					<div id="route_txt_area14-1" class="route_text">
						<div class="route_txt01" class="route_text">
							<p>
								저지-서광 올레<br>난이도: 하<br>총 길이: 9.3Km, 3~4시간
							</p>
						</div>
					</div>
					<div id="route_txt_area15" class="route_text">
						<div class="route_txt02" class="route_text">
							<p>
								한림-고내 올레<br>난이도: 중<br>총 길이: 16.5Km, 5~6시간
							</p>
						</div>
					</div>
					<div id="route_txt_area16" class="route_text">
						<div class="route_txt01" class="route_text">
							<p>
								고내-광령올레<br>난이도: 중<br>총 길이: 15.8Km, 5~6시간
							</p>
						</div>
					</div>
					<div id="route_txt_area17" class="route_text">
						<div class="route_txt01" class="route_text">
							<p>
								광령-제주원도심올레<br>난이도: 중<br>총 길이: 18.1Km, 6~7시간
							</p>
						</div>
					</div>
					<div id="route_txt_area18" class="route_text">
						<div class="route_txt01" class="route_text">
							<p>
								제주원도심-조천올레<br>난이도: 중<br>총 길이: 19.7Km, 6~7시간
							</p>
						</div>
					</div>
					<div id="route_txt_area18-1" class="route_text">
						<div class="route_txt01" class="route_text">
							<p>
								추자도올레<br>난이도: 상<br>총 길이: 18.2Km, 6~8시간
							</p>
						</div>
					</div>
					<div id="route_txt_area19" class="route_text">
						<div class="route_txt01">
							<p>
								조천-김녕올레<br>난이도: 중<br>총 길이: 19.4Km, 6~7시간
							</p>
						</div>
					</div>
					<div id="route_txt_area20" class="route_text">
						<div class="route_txt01">
							<p>
								김녕-하도 올레<br>난이도: 중<br>총 길이: 17.6Km, 5~6시간
							</p>
						</div>
					</div>
					<div id="route_txt_area21" class="route_text">
						<div class="route_txt01">
							<p>
								하도-종달 올레<br>난이도: 하<br>총 길이: 11.3Km, 3~4시간
							</p>
						</div>
					</div>

					<!---루트 라인-->
					<div class="route_1" onclick="chk_route('1');"></div>
					<div class="route_1-1" onclick="chk_route('2');"></div>
					<div class="route_2" onclick="chk_route('3');"></div>
					<div class="route_3" onclick="chk_route('4');"></div>
					<div class="route_4" onclick="chk_route('6');"></div>
					<div class="route_5" onclick="chk_route('7');"></div>
					<div class="route_6" onclick="chk_route('8');"></div>
					<div class="route_7" onclick="chk_route('9');"></div>
					<div class="route_7-1" onclick="chk_route('10');"></div>
					<div class="route_8" onclick="chk_route('11');"></div>
					<div class="route_9" onclick="chk_route('12');"></div>
					<div class="route_10" onclick="chk_route('13');"></div>
					<div class="route_10-1" onclick="chk_route('14');"></div>
					<div class="route_11" onclick="chk_route('15');"></div>
					<div class="route_12" onclick="chk_route('16');"></div>
					<div class="route_13" onclick="chk_route('17');"></div>
					<div class="route_14" onclick="chk_route('18');"></div>
					<div class="route_14-1" onclick="chk_route('19');"></div>
					<div class="route_15" onclick="chk_route('20');"></div>
					<div class="route_16" onclick="chk_route('22');"></div>
					<div class="route_17" onclick="chk_route('23');"></div>
					<div class="route_18" onclick="chk_route('24');"></div>
					<div class="route_18-1" onclick="chk_route('25');"></div>
					<div class="route_19" onclick="chk_route('26');"></div>
					<div class="route_20" onclick="chk_route('27');"></div>
					<div class="route_21" onclick="chk_route('28');"></div>
				</div>
			</div>
		</div>		
