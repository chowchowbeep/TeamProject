<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="dbconnect.jsp"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<%@ include file="/layout/hos_head.jsp"%>
<style>
.ty{
cursor:pointer;
}
</style>
<%@ include file="/layout/hos_menu.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>sick_search_list</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">홈</a></li>
								<li class="breadcrumb-item active">환자관리</li>
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
        <form class="form-horizontal" method="post" action="sick_search.jsp">
              <div class="card-body table-responsive p-0" style="height: 350px;">
                <table class="table table-hover table-valign-middle">
                  <thead>
                    <tr>
                      <th width="40%;">이름</th>
                      <th width="35%;">진료</th>
                      <th width="25%;">생년월일</th>
                      <th width="15%;">번호</th>
                    </tr>
                  </thead>
            		<tbody>
                    <c:forEach items="${list}" var="dto">
                    <tr>
                      <td><a href=sick_search_detail.jsp>${dto.name}</a></td>
                      <td>${dto.Code}</td>
                      <td>${dto.ihidno}</td>
                      <td>${dto.phone}</td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
              </div>
			<button type="submit" class="btn btn-block btn-info">목록가기</button>
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
<%@ include file="/layout/all_footer.jsp"%>
