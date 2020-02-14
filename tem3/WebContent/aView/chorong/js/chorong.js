
// 예약취소시 발생 이벤트
function cancelRes() {
	var chCancel = confirm("접수를 취소하시겠습니까?");
	if (chCancel == true) {
		alert("접수가 취소되었습니다.");
		// 접수 처리하는 .do 요청(dao에서 접수내용 row삭제하고, med_beforeMedList.jsp로
		// redirection? forward?)
		location.href = "med_beforeMedList.jsp";// .do로 변경 필요
	}
}


// 확인버튼 누르면 진료신청현황으로 이동 필요
function toBeforeMedList() {
	location.href = "med_beforeMedList.jsp"// .do로 변경 필요
}



//