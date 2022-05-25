/**
 * 
 */
function joinCheck(){
	if(document.frm.custname.value.length == 0){
		alert("회원성명 입력 안됨");
		frm.custname.focus();
		return false;
	}
	
	if(document.frm.phone.value.length == 0){
		alert("회원전화 입력 안됨");
		frm.phone.focus();
		return false;
	}
	
	if(document.frm.address.value.length == 0){
		alert("회원주소 입력 안됨");
		frm.address.focus();
		return false;
	}
	
	if(document.frm.joindate.value.length == 0){
		alert("가입일자 입력 안됨");
		frm.joindate.focus();
		return false;
	}
	
	if(document.frm.grade.value.length == 0){
		alert("고객등급 입력 안됨");
		frm.grade.focus();
		return false;
	}
	
	if(document.frm.city.value.length == 0){
		alert("도시코드 입력 안됨");
		frm.city.focus();
		return false;
	}
	alert("회원 등록 완료");
	return true;
}
function search(){
	window.location = "list.jsp";
}