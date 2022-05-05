/**
 * 
 */

function chooseOn(i){
	var tabList=document.getElementsByClassName("link-tab");
	tabList[i].classList.add("on");
	
	
	if(i==4) {
		document.getElementById("subTitle").innerText="자원봉사";
	} else {
		document.getElementById("subTitle").innerText="프로그램";
	}
}

