
// 진료신청 취소시 발생 이벤트
function cancelRes() {
	var chCancel = confirm("진료신청을 취소하시겠습니까?");
	if (chCancel == true) {
		alert("진료신청이 취소되었습니다.");
		// 접수 취소처리하는 .do 요청(dao에서 접수내용 row삭제하고, 
		// redirection? forward?)
		// beforeMedLi
		location.href = "SMedBeforeMedList.do";// .do로 변경 필요
	}
}


// 확인버튼 누르면 진료신청현황으로 이동 필요
function toBeforeMedList() {
	location.href = "SMedBeforeMedList.do"// .do로 변경 필요
}



//