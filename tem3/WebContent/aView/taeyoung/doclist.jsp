<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../../0_hos_layout_header.jsp"%>
<%@ include file="../../0_hos_layout_topMenu.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>doctor_list</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">홈</a></li>
								<li class="breadcrumb-item active">의사관리</li>
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
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title"></h3>

                <div class="card-tools">
                  <div class="input-group input-group-sm" style="width: 150px;">
                    <input type="text" name="table_search" class="form-control float-right" placeholder="Search">

                    <div class="input-group-append">
                      <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.card-header -->
        <form class="form-horizontal" method="post" action="docadd.jsp">
              <div class="card-body table-responsive p-0" style="height: 400px;">
                <table class="table table-hover table-valign-middle">
                  <thead>
                    <tr>
                      <th>번호</th>
                      <th style="width:25%;">이름</th>
                      <th style="width:25%;">과목</th>
                      <th>삭제</th>
                    </tr>
                  </thead>
            		<tbody>
                    <tr>
                      <td>[175]</td>
                      <td>[김민정]</td>
                      <td>[소아과]</td>
                      <td><a class="btn btn-block btn-default btn-sm" href="#">
                              <i class="fas fa-trash">
                              </i>Del</a>
                      </td>
                    </tr>
                    <tr>
                      <td>[134]</td>
                      <td>[김주련]</td>
                      <td>[내과]</td>
                      <td><a class="btn btn-block btn-default btn-sm" href="#">
                              <i class="fas fa-trash">
                              </i>Del</a>
                      </td>
                    </tr>
                    <tr>
                      <td>[494]</td>
                      <td>[김태영]</td>
                      <td>[이비인후과]</td>
                      <td><a class="btn btn-block btn-default btn-sm" href="#">
                              <i class="fas fa-trash">
                              </i>Del</a>
                      </td>
                    </tr>
                    <tr>
                      <td>[832]</td>
                      <td>[이다연]</td>
                      <td>[안과]</td>
                      <td><a class="btn btn-block btn-default btn-sm" href="#">
                              <i class="fas fa-trash">
                              </i>
                              	Del
                          </a></td>
                    </tr>
                    <tr>
                      <td>[982]</td>
                      <td>[조선아]</td>
                      <td>[내과]</td>
                     <td><a class="btn btn-block btn-default btn-sm" href="#">
                              <i class="fas fa-trash">
                              </i>
                              	Del
                          </a></td>
                    </tr>
                  </tbody>
                </table>
              </div>
			<button type="submit" class="btn btn-block btn-info">의사추가</button>
       </form>
              
              
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
        </div>
        </section>

				<!-- Control Sidebar -->
				<aside class="control-sidebar control-sidebar-dark">
					<!-- Control sidebar content goes here -->
				</aside>
				<!-- /.control-sidebar -->
		</div>
		<!-- ./wrapper -->
<br><br>
	<%@ include file="../../0_all_layout_footer.jsp"%>