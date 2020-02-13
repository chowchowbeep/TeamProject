<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ include file="/layout/sick_head.jsp"%>
<%@ include file="/layout/sick_menu.jsp"%>

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
		<div class="container-fluid">
		  <div class="row mb-2">
			  <div class="col-sm-6">
							<h1>접수증 생성</h1>
							
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">홈</a></li>
								<li class="breadcrumb-item active">접수증</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>
				 
		 <div class="col-md-3">
            <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title"></h3><!-- title -->
              </div>
              
              <!-- /.card-header -->
              
              <div class="card-body">
                <form role="form" method="post" action="sick_wjqtnwmd.jsp">
                  
                  <div class="row">
                    <div class="col-sm">
                      <!-- text input -->
                      <div class="form-group">
                        <label>이름:</label>
                        <input type="text" class="form-control" placeholder="Enter ...">
                      </div>
                    </div>
                    </div>
                    
                     <div class="row">
                    <div class="col-sm-6">
                      <!-- text input -->
                      <div class="form-group">
                        <label>생년월일:</label>
                        <input type="text" class="form-control" placeholder="Enter ...">
                      </div>
                    </div>
                    </div>
                    
                     <div class="row">
                    <div class="col-sm-6">
                      <!-- text input -->
                      <div class="form-group">
                        <label>전화번호:</label>
                        <input type="text" class="form-control" placeholder="Enter ...">
                      </div>
                    </div>
                    </div>

                  <div class="row">
                    <div class="col-sm-6">
                      <!-- textarea -->
                      <div class="form-group">
                        <label>주소:</label>
                        <textarea class="form-control" rows="2" placeholder="Enter ..."></textarea>
                      </div>
                    </div>
                  </div>
                  
                   <div class="row">
                    <div class="col-sm-6">
                      <!-- textarea -->
                      <div class="form-group">
                        <label>기타건강정보사항:</label>
                        <textarea class="form-control" rows="4" placeholder="Enter ..."></textarea>
                      </div>
                    </div>
                  </div>
					<button type="submit" class="btn btn-block btn-info">접수증 생성하기</button>     
                </form>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            <!-- general form elements disabled -->

			</div>
  
  
				<!-- Control Sidebar -->
				<aside class="control-sidebar control-sidebar-dark">
					<!-- Control sidebar content goes here -->
				</aside>
				<!-- /.control-sidebar -->
		</div>
		<!-- ./wrapper -->

<%@ include file="/layout/all_footer.jsp"%>

