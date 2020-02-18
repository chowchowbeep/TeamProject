
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

//기록물 리스트 불러와서 값 넘기기 
dcUpload.addEventListener("click", function(){
	//기록물리스트 가져올 수 있는 파라미터값 같이 넘기기 
	//window.open("idcheck.jsp?cid="+id.value,"selDcry","width=350, height=550");
	window.open("STmrSelectDcry.do","selDcry","width=350, height=550");
})


// 확인버튼 누르면 진료신청현황으로 이동 필요
function toBeforeMedList() {
	location.href = "SMedBeforeMedList.do"// .do로 변경 필요
}



//