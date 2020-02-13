<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ include file="/layout/sick_head.jsp"%>
  <script>
 	$(function () {
	$('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' }) 	
 	})
	</script>
	
<%@ include file="/layout/sick_menu.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>sick_search</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">홈</a></li>
								<li class="breadcrumb-item active">환자검색</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

    <!-- Main content -->
         <!-- Horizontal Form -->
         
 <section class="content">
      <div class="container-fluid">
        <div class="row">
                  <div class="col-12" >
            <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title"></h3><!-- "" -->
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form class="form-horizontal" method="post" action="doctor_list.jsp">
                <div class="card-body" style="height:300px; margin-left:20px;">
                 <div>
                  <label>진료타입</label>
                  <div>
                 	<input type="radio" name="wjqtn" value="당일접수"checked="checked"> 당일접수&nbsp;&nbsp;
					<input type="radio" name="reserve" value="예약"> 예약&nbsp;&nbsp;
					<input type="radio" name="cancel" value="예약"> 취소
                  </div>
					</div><br>
                  <div>
                  <label>상세정보</label>
                 <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="far fa-user"></i></span>
                    </div>
                    <input type="text" class="form-control" placeholder="환자이름">
                  </div>
                  <!-- /.input group -->
                </div>
                <!-- /.form group -->

                  <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                    </div>
                    <input type="text" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="dd/mm/yyyy" data-mask
                    placeholder="생년월일">
                  </div>
                  <!-- /.input group -->
                </div>
                <!-- /.form group -->
            <!-- phone mask -->
                <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="fas fa-phone"></i></span>
                    </div>
                    <input type="text" class="form-control" data-inputmask='"mask": "(999) 999-9999"' data-mask placeholder="전화번호">
                  </div>
                  <!-- /.input group -->
                </div>
                <!-- /.form group -->
				</div>
                </div>
                <!-- /.card-body -->
                <!-- /.card-footer -->
              <div class="card-footer text-center">
                  <button type="submit" class="btn btn-info">검색</button>
                </div>
              </form>
            </div>
            <!-- /.card -->
</div></div></div></section>
          <!--/.col (left) -->
          <!-- right column -->
  <!-- /.content-wrapper -->
  
  
				<!-- Control Sidebar -->
				<aside class="control-sidebar control-sidebar-dark">
					<!-- Control sidebar content goes here -->
				</aside>
				<!-- /.control-sidebar -->
		</div>
		<!-- ./wrapper -->

<%@ include file="/layout/all_footer.jsp"%>

