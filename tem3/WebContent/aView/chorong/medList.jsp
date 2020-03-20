<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/layout/sick_head.jsp"%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/aView/chorong/css/chorong.css?ver=3">
<script src="<%=request.getContextPath()%>/aView/chorong/js/chorong.js"></script>

<!-- /SMedBeforeMedList.do로 진료신청목록조회-->
<!-- /SMedDoneList.do로 진료이력목록조회 -->

<script>
	var id = '${id}'; //추후 수정.
	var doneStatus = '${doneStatus}'; // 진료 전인지 후인지

	$(document).ready(function() {

		// 초기화면(전체 목록 표시)
		getListWithPaging(1, "all");

		$(".listTab").on('click', function(e) {
			e.preventDefault();
			// 탭 클릭 후 새 목록을 보여주기 전 기본 작업
			$(".nav-link").removeClass("active");
			$(this).addClass("active");

			var type = $(this).attr("id");
			getListWithPaging(1, type);

		})
	})

	function getListWithPaging(num, type) { //url도 추가?(doneList와 공유하는 경우) //
		// 호출될 때 id(dao에서 값 가져올 때 필요)와 해당페이지(클릭한 페이지)번호를 인자로받아서.

		$("#pageBtns").empty();
		$("tbody").empty();

		var currentPage = num; //현재페이지
		var dataRowsPerPage = 5; // 페이지에 게시물 수 (고정)
		var pageBtnsPerOnePage = 5; // 리스트 페이지수 (고정) __ 한 화면에 표시되는 페이지버튼수?
		var totalDataRows; // 총게시물갯수
		var totalPageCnt; // 생성될 전체 페이지 수
		var startPageBtn;
		var endPageBtn;

		// 전체 게시물 갯수 받아오고, 총페이지수 구하기
		$
				.ajax({
					url : "ajax/SMedListPaging.do",
					data : {
						'id' : id,
						'type' : type,
						'doneStatus' : doneStatus
					},
					dataType : "json",
					success : function(result) {
						totalDataRows = result.totalDataRows; // 총게시물 갯수 설정
						totalPageCnt = Math.floor(totalDataRows
								/ dataRowsPerPage);
						// 총 페이지수 구하기
						if (totalDataRows % dataRowsPerPage > 0) {
							totalPageCnt++; // 나머지가 있으면 전체페이지수가 +1이 된다.
						}
						var pageMath = Math.floor(currentPage / 5.0000001) + 1;
						// 현재 페이지의 수가 5이하인지 이상인지(이상이라면 5의 배수를 몇 번 넘었는지) 계산.
						// ex.나뉘어진 결과값이 1미만(+1했으니까 최종결과는 1)이면 현재페이지의 수는 5 이하
						// (5.000001로 나누었기 때문에 5미만 아닌 5이하)
						startPageBtn = (pageMath - 1) * 5 + 1;
						// 노출되는 시작페이지번호를 계산.
						// ex.현재 페이지가 5페이지이하일 경우 시작페이지버튼은 1. 
						// ex.현재 페이지수가 6(5의 배수를 한번 지나감)이라면 시작페이지버튼 6
						// 11(5의 배수를 두번 지나감)이라면 시작페이지버튼 11(5 * 5의 배수 넘은 횟수 + 1)
						endPageBtn = totalPageCnt; // 
						var totalPageMath = Math
								.floor(totalPageCnt / 5.0000001) + 1;
						// 페이지 버튼세트(한 세트 5개버튼까지)가 몇 개 필요한지를 위해서 계산.
						// (전체페이지수가 5의 몇배를 초과하는지에 따라 페이지 버튼 셋 개수 결정됨)
						// ex. 총 페이지수를 5.0000001로 나눠서 1미만이면 
						// 다음페이지버튼세트(이동버튼'>>') 필요 없음. 페이지 버튼 덩어리가 1개만 있으면 됨
						// ex. 1이 넘게 나오면(총페이지수가 5의배수를 넘는경우) 페이지 버튼세트는 2개 이상

						// 화살표버튼 기본
						// <<
						var laquoBtn = '<li class="page-item">'
								+ '<a href="#"' + 'class="page-link page-link-arrow"'
															+ ' id ="laquoBtn"' +'>&laquo;</a>';
						// <											
						var lsaquoBtn = '<li class="page-item">'
								+ '<a href="#"' + 'class="page-link page-link-arrow"' 
															+ ' id ="lsaquoBtn"' + '>&lsaquo;</a>';
						// >											
						var rsaquoBtn = '<li class="page-item">'
								+ '<a href="#"' + 'class="page-link page-link-arrow"'
															+' id ="rsaquoBtn"' + '>&rsaquo;</a>';
						// >>											
						var raquoBtn = '<li class="page-item">'
								+ '<a href="#"' + 'class="page-link page-link-arrow"'
															+' id ="raquoBtn"'+'>&raquo;</a>';
						// 페이지 버튼 구성하기											
						if (totalPageCnt < pageBtnsPerOnePage + 1) {
							//전체페이지가 여섯개 미만인경우(다음,이전페이지버튼세트로의 이동버튼이 disabled되는 경우)
							$("#pageBtns").append(laquoBtn);
							$("#pageBtns").append(lsaquoBtn);
							$("#laquoBtn").addClass("disabled");
							$("#lsaquoBtn").addClass("disabled");
							for (var i = startPageBtn; i <= totalPageCnt; i++) { // 숫자버튼
								var noBtns = '<li class="page-item">'
										+ '<a href="#" ' + 'class="page-link ';
								if (i == currentPage) {
									noBtns += 'active"';
								}
								noBtns += '"' + ' onclick="getListWithPaging('
										+ i + ", " + "'" + type + "'" + ')">'
										+ i + '</a></li>';
								$("#pageBtns").append(noBtns);
							}
							$("#pageBtns").append(rsaquoBtn);
							$("#pageBtns").append(raquoBtn);
							$("#rsaquoBtn").addClass("disabled");
							$("#raquoBtn").addClass("disabled");
						} else if (totalPageMath == pageMath) {
							// 전체 페이지 수가 여섯개이상이고 ('<' 버튼 필요)
							// 전체 페이지수가 5의 몇 배를 초과하는지 == 현재 페이지가 5의 몇 배를 초과하는지??
							// => 현재페이지는 마지막 페이지버튼셋이 있는 페이지임.
							// => 현재 페이지에서 추가로 출력이 필요한 페이지버튼 세트가 없음('>' 버튼 필요없음)
							// 따라서 아래에서 페이지 버튼 생성도 totalPageCnt까지 반복하면 됨.
							$("#pageBtns").append(laquoBtn);
							$("#pageBtns").append(lsaquoBtn);
							$("#laquoBtn").attr(
									"onclick",
									"getListWithPaging(" + 1 + "," + "'" + type
											+ "'" + ")"); // 맨 앞 페이지로 이동
							$("#lsaquoBtn").attr(
									"onclick",
									"getListWithPaging(" + (startPageBtn - 5)
											+ "," + "'" + type + "'" + ")"); // 이전페이지셋으로 이동
							for (var i = startPageBtn; i <= totalPageCnt; i++) { // 현재페이지버튼 셋의 숫자버튼 구성
								var noBtns = '<li class="page-item">'
										+ '<a href="#" ' + 'class="page-link ';
								if (i == currentPage) {
									noBtns += 'active"';
								}
								noBtns += '"' + ' onclick="getListWithPaging('
										+ i + ", " + "'" + type + "'" + ')">'
										+ i + '</a></li>';
								$("#pageBtns").append(noBtns);
							}
							$("#pageBtns").append(rsaquoBtn);
							$("#pageBtns").append(raquoBtn);
							$("#rsaquoBtn").addClass("disabled");
							$("#raquoBtn").addClass("disabled");

						} else if (totalPageCnt > pageBtnsPerOnePage) {
							// 전체 페이지수 여섯개이상이고('<<'필요), 현재페이지는 마지막버튼셋있는 페이지아니며('>>'필요)
							// ,총페이지수가 한 페이지에 표시할 페이지버튼수보다 큰 경우
							$("#pageBtns").append(laquoBtn);
							$("#pageBtns").append(lsaquoBtn);
							if (pageMath != 1) { // 현재페이지수가 5이하가 아닌 경우 (이전페이지버튼셋으로 이동버튼필요))
								$("#laquoBtn").attr(
										"onclick",
										"getListWithPaging(" + 1 + "," + "'"
												+ type + "'" + ")"); // 맨 앞 페이지로 이동
								$("#lsaquoBtn").attr(
										"onclick",
										"getListWithPaging(" + (pageMath - 1)
												+ "," + "'" + type + "'" + ")"); // 이전페이지셋으로 이동
							} else {
								$("#laquoBtn").addClass("disabled");
								$("#lsaquoBtn").addClass("disabled");
							}
							for (var i = startPageBtn; i <= startPageBtn + 4; i++) { //현재페이지버튼 셋의 숫자버튼 구성
								var noBtns = '<li class="page-item">'
										+ '<a href="#" ' + 'class="page-link ';
								if (i == currentPage) {
									noBtns += 'active"';
								}
								noBtns += '"' + ' onclick="getListWithPaging('
										+ i + ", " + "'" + type + "'" + ')">'
										+ i + '</a></li>';
								$("#pageBtns").append(noBtns);
							}
							$("#pageBtns").append(rsaquoBtn);
							$("#pageBtns").append(raquoBtn);
							$("#rsaquoBtn").attr(
									"onclick",
									"getListWithPaging(" + (startPageBtn + 5)
											+ "," + "'" + type + "'" + ")"); // 다음페이지셋으로 이동
							$("#raquoBtn").attr(
									"onclick",
									"getListWithPaging(" + endPageBtn + ","
											+ "'" + type + "'" + ")"); //맨 뒤 페이지로 이동
						}

						// 페이지당 출력되는 데이터 가져오는 범위가 될 rownum에 해당하는 인덱스 담기
						var firstIndex = dataRowsPerPage * (currentPage - 1)
								+ 1;
						//인자로 받은 페이지(currentPage_클릭한페이지)의 바로 직전 페이지까지의 건수+1 하면 
						//클릭한페이지의 맨처음 dataRow의 rownum구할 수 있음
						var lastIndex = currentPage * dataRowsPerPage;

						// 페이지별 출력할 데이터 가져와서 td채우기
						listAjax(type, firstIndex, lastIndex, currentPage);
					}
				})
	}

	//ajax로 목록 가져오기
	function listAjax(type, firstIndex, lastIndex, currentPage) {

		// 인덱스도 파라미터로 받아와야 함
		var firstIndex = firstIndex;
		var lastIndex = lastIndex;
		// 		console.log("listAjax 타입 파라미터" + type);
		// 		console.log(id);
		// 		console.log("firstIndex:" + firstIndex);
		// 		console.log("lastIndex:" + lastIndex);
		$.ajax({
			type : "POST",
			url : "ajax/SMedListAjax.do",
			dataType : "json",
			data : {
				"type" : type,
				"id" : id,
				"firstIndex" : firstIndex,
				"lastIndex" : lastIndex,
				"doneStatus" : doneStatus
			},
			success : function(result) {
				console.log(result);
				listToTable(result, currentPage);
			}
		});
	}

	// ajax로 받아온 결과값을 이용하여 목록 표시
	function listToTable(result, currentPage) {
		var tbody = null;
		$
				.each(
						result,
						function(idx, item) {
							var tr = '<tr class="toRqDetail" id=' + item.rqstNo + '>'
									+ '<td>'
									+ item.rqstDttm
									+ '</td>'
									+ '<td>'
									+ item.hosName
									+ '</td>'
									+ '<td><svg class="bi bi-chevron-right" width="20" height="20"'+
			'viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">'
									+ '<path fill-rule="evenodd" d="M6.646 3.646a.5.5 0 01.708 0l6 6a.5.5 0 010 .708l-6 6a.5.5 0 01-.708-.708L12.293 10 6.646 4.354a.5.5 0 010-.708z" clip-rule="evenodd" />'
									+ '</svg></td>' + '</tr>';
							tbody += tr;
						})
		$("tbody").html(tbody);
	}
</script>
<%@ include file="/layout/sick_menu.jsp"%>


<!-- 상세정보-->
<form id="frm" name="frm" method="post">

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<div class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<c:if test="${doneStatus=='before'}">
							<h1 class="m-0 text-dark">진료신청현황</h1>
						</c:if>
						<c:if test="${doneStatus=='after'}">
							<h1 class="m-0 text-dark">진료완료이력</h1>
						</c:if>
					</div>
					<!-- /.col -->
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item">홈</li>
							<li class="breadcrumb-item active">일반회원</li>
						</ol>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /.content-header -->


		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">
				<ul class="nav nav-pills justify-content-center" id="pills-tab"
					role="tablist">
					<li class="nav-item"><a class="nav-link listTab active"
						id="all" href="#" role="tab">전체</a></li>
					<li class="nav-item"><a class="nav-link listTab" id="tmr"
						href="#" role="tab">접수</a></li>
					<li class="nav-item"><a class="nav-link listTab" id="res"
						href="#" role="tab">예약</a></li>
						
					<c:if test="${doneStatus =='before'}">
						<li class="nav-item"><a class="nav-link listTab" id="cancel"
							href="#" role="tab">취소</a></li>
					</c:if>

				</ul>
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body table-responsive p-0">
								<table class="table table table-hover text-wrap">
									<thead>
										<tr align="center">
											<th style="width: 35%;">신청일</th>
											<th style="width: 35%;">병원</th>
											<th style="width: 30%;">상세</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</div>
						</div>

						<!-- 페이지이동버튼  -->
						<div>
							<nav aria-label="Page navigation">
								<ul class="pagination justify-content-center" id="pageBtns"></ul>
							</nav>
						</div>

					</div>
				</div>
				<!-- /.row -->

				<input type="hidden" id="rqstNo" name="rqstNo">
				<!-- 선택한 진료신청항목의 진료신청번호를 전송 -->
				<input type="hidden" id="id" name="id" value="${id }">
				<!-- 로그인중인 아이디 추후수정_세션-->
			</div>
		</section>



	</div>
	<!-- ./wrapper -->
</form>
<%@ include file="/layout/all_footer.jsp"%>
<script>
	//동적으로 생성된 태그에 이벤트 적용
	$(document).on("click", ".toRqDetail", function() {
		var rqstNo = $(this).attr("id"); //클릭한 현재 행의 id값(진료신청번호)을 넘길것임
		console.log(rqstNo);
		$("#rqstNo").attr("value", rqstNo);
		// 		console.log("파라미터에 실린 진료신청번호 : " + $("#rqstNo").attr("value"));
	<c:if test="${doneStatus=='before'}">
	frm.action = "SRqDetail.do"; //진료신청현황 상세 페이지로
	</c:if>	
	<c:if test="${doneStatus=='after'}">
	frm.action = "SMedDoneDetail.do"; //진료완료현황 상세 페이지로
	</c:if>	
		
		frm.submit(); //제출되면 클릭된 행의 신청번호가 파라미터로 실려갑니다.
	});
</script>
</body>
</html>