


// 신청완료 페이지에서 목록 또는 확인 버튼 누를 경우
// 진료신청현황 리스트 페이지로 이동 
function toBeforeMedList() {
	frm.action = "SMedABeforeMedList.do";
	frm.submit();
}



// 신청현황상세 혹은 신청완료 페이지에서 진료신청 취소할 경우
function cancelRes() {
	var chCancel = confirm("진료신청을 취소하시겠습니까?");
	if (chCancel == true) {
		alert("진료신청이 취소되었습니다."); //취소시 확인알림팝업뜨고 
		frm.action = "SCancelRq.do";//취소처리 후 목록페이지로 
		frm.submit(); 
	}
}


// 기록물 리스트 불러와서 값 넘기기 
function toAddDcry() {
	//기록물리스트 가져올 수 있는 파라미터값 같이 넘기기 
	window.open("STmrSelectDcry.do", "selDcry", "width=350, height=550");
}

