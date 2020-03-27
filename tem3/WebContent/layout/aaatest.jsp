<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
	<button onclick="decFormCheck()" class="btn btn-secondary float-right">신고하기</button>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">...</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-secondary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
	
	
	
	
<!-- 컨텐츠 위치 -->
<!-- Content Wrapper. Contains page content -->
<form id="frm" name="frm" method="post">
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>병원신고</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">홈</a></li>
							<li class="breadcrumb-item active">일반회원</li>
						</ol>
					</div>
				</div>
			</div>
			<!-- /.container-fluid -->
		</section>

		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">
				<div class="row">


					<!-- left column -->
					<div class="col-md-12">

						<!-- 선택한 병원정보 출력   -->
						<div class="card card-secondary">
							<div class="card-header">
								<h3 class="card-title">신고내용입력</h3>
							</div>
							<div class="card-body">

								<div class="row">
									<div class="col-sm-12">
										<div class="form-group">
											<label for="hosId">병원명</label>
											<!-- 병원id값, 병원이름 가져오기. 병원id value 수정하기 -->
											<!-- param.name test해보기 -->
											<input type="text" class="form-control"
												value="병원1${dto.hosName}" readonly> <input
												type="hidden" id="hosId" name="hosId" value="hos1">
											<br> <label for="decCont">신고내용</label>
											<textarea id="decCont" name="decCont" class="form-control"
												style="height: 180px;" placeholder="신고내용을 입력해주세요 "></textarea>

										</div>
									</div>
								</div>
							</div>
							<!-- /.card-body 끝 신청폼바디-->
						</div>




						<!-- 신청폼푸터 // 제출 및 기타 버튼 위치 -->
						<!-- 클릭시 신고완료 알림 창 띄운 후 상세 페이지로 이동 -->
						<div class="card-footer">
							<input type="hidden" id="id" name="id" value="sic1">
							<!-- 로그인중인 아이디(임시로 sic1로 설정) 나중에 수정-->
							<input type="reset" class="btn btn-secondary" value="초기화">
							<button onclick="decFormCheck()"
								class="btn btn-secondary float-right">신고하기</button>
						</div>



					</div>
					<!--/.col (left) -->

					<!-- right column -->
					<div class="col-md-6"></div>
					<!--/.col (right) -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</section>
		<!-- /.content -->
	</div>
<!-- /.content-wrapper -->
</form>
	
	
	
	
	<script>
		//유효성 체크 및 값 넘기기
		function decFormCheck() {
			var cont = $("#decCont").val();
			if (cont == null || cont == "") {
				$("#exampleModal").modal('toggle'); // 값이 입력되지 않았습니다. 모달
			} else {
				frm.action = "SDeclarationInsert.do";
				frm.submit();
				//$('#exampleModal').modal(); //신고가 완료되었습니다. 모달
			}
		}
	</script>
</body>
</html>