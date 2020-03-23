


// 진료신청 완료페이지에서 확인버튼 누를 경우
// 진료신청현황 리스트 페이지로 이동 
function toBeforeMedList() {
	frm.action = "SMedBeforeMedList.do";
	frm.submit();
}


// 기록물 리스트 불러와서 값 넘기기 
function toAddDcry() {
	//기록물리스트 가져올 수 있는 파라미터값 같이 넘기기 
	window.open("STmrSelectDcry.do", "selDcry", "width=350, height=550");
}

////진료신청 취소할 경우
//function cancelRq() {
//	var confirmCancel = "진료신청을 취소하시겠습니까?";
//	var cancelDone = "진료신청이 취소되었습니다.";
//	$(".modal").modal({
//		keyboard: false,
//		backdrop: 'static'
//	});
//	$(".modal").modal('show');
//	$("#modalBody").text(confirmCancel);
//	$("#cancelOk").on("click", function() {
//		$(".modal-footer").empty();
//		$("#modalBody").text(cancelDone);
//		$(".modal").modal({
//			keyboard: false,
//			backdrop: 'static'
//			})
//		$(".modal").modal('show');	
//		frm.action = "SCancelRq.do";//취소처리 후 목록페이지로 
//		frm.submit();
//	});
//	$("#notCancel").on("click", function() {
//		history.go(-1);
//	});
//}


