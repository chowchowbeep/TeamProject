<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/layout/sick_head.jsp"%>
<style>
.float-right{
				border:none;
}
</style>
<%@ include file="/layout/sick_menu.jsp"%>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">환자 상세 정보</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
             <li class="breadcrumb-item"><a href="#"></a></li><!--  -->
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-3">
            <!-- Profile Image -->
            <div class="card card-primary card-outline">
              <div class="card-body box-profile">
              <form>
                <div class="text-center">
                  <img class="profile-user-img img-fluid img-circle"
                       src="../../dist/img/logo.smalls.jpg"
                       alt="Userprofile picture">
                </div>
                <div class="text-center">
                <input type="text" class="profile-username text-center" style="border:none;" placeholder="고먐이">
						</div>
                <ul class="list-group list-group-unbordered mb-4">
                  <li class="list-group-item">
                    <b>진료타입</b><input type="text" class="float-right" placeholder="예약">
                  </li>
                  <li class="list-group-item">
                    <b>생년월일</b> <input type="text" class="float-right" placeholder="20-01-01">
                  </li>
                  <li class="list-group-item">
                    <b>연락처</b> <input type="text" class="float-right" placeholder="소아과">
                  </li>
                  <li class="list-group-item">
                    <b>주소</b> <input type="text" class="float-right" placeholder="고양시 고양동 고먐네모네모">
                  </li>
                  <li class="list-group-item">
            <b>진료이력</b><textarea class="float-right">손가락 골절</textarea>
                  </li></ul>
                <a href="../../aView/leedy/hospital_upload.jsp" class="btn btn-primary btn-block"><b>기록물 업로드</b></a>
          </form>
           </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

            </div>
            </div></div></section>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->

</div>
<!-- ./wrapper -->

<%@ include file="/layout/all_footer.jsp"%>
