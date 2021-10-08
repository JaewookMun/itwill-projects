
function commu_btn(i){
	let btnList = document.getElementsByClassName("commu_btn");
	btnList[i-1].classList.add("commu_btn_on");
}


function commu_number(i){
	let btnList = document.getElementsByClassName("numberPage");
	let index = (i-1)%5;
	btnList[index].classList.add("active");
}