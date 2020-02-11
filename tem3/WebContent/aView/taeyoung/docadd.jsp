<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
  <%@ include file="../../0_hos_layout_header.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>doctor_add</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">홈</a></li>
								<li class="breadcrumb-item active">의사추가</li>
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
                <h3 class="card-title"><i class="fas fa-user-plus"></i></h3><!-- "" -->
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form class="form-horizontal" method="post" action="doclist.jsp">
                <div class="card-body" style="height:280px;">
                  <div class="form-group row">
                    <label for="inputEmail" class="col-sm-2 col-form-label">의사번호</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="DocId" placeholder="의사번호">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">의사이름</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputPassword3" placeholder="의사이름">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">진료과목</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputPassword3" placeholder="진료과목">
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="offset-sm-2 col-sm-10">
                     <!-- <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck2">
                        <label class="form-check-label" for="exampleCheck2">real add?</label>
                      </div>  -->
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="submit" class="btn btn-info">등록</button>
                  <a class="btn btn-default float-right" href="#">취소</a>
                </div>
                <!-- /.card-footer -->
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

	<%@ include file="../../0_all_layout_footer.jsp"%>

