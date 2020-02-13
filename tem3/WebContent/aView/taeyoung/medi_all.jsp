<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/layout/hos_head.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
.float-right{
 border: none;
}
.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px 0px;
  z-index: 1;
}

.dropdown-content a {
  color: #696969;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}
.dropdown:hover .dropdown-content {display: block;}

table{
	text-align:center;
}
</style>
<%@ include file="/layout/hos_menu.jsp"%>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">진료현황</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div><!-- /.content-header -->

    <!---- Main content ----------------------------->
    <section class="content">
      <div class="container-fluid">
         <div class="dropdown">
			전체&nbsp;<i class="fas fa-caret-down"></i><!-- 화살표 -->
			<!-- <i class="fas fa-bars"></i>  줄 세개-->
 		 <div class="dropdown-content">
    		<a href="medi_all.jsp">전체</a>
    		<a href="medi_wjqtn.jsp">당일 접수</a>
   			<a href="medi_reserve.jsp">예약</a>
 		 </div>
		</div><br>
		
        <div class="row">
        <div class="col-12" >
            <div class="card">
              <div class="card-header border-0">
                <h3 class="card-title"><!-- 제목 --></h3>
                <div class="card-tools">
                </div>
              </div>
              
         <div class="card-body table-responsive p-0">
         <table class="table table-striped table-valign-middle">
           <thead>
             <tr>
               <th style="width:5%;">번호</th>
               <th style="width:28%;">이름</th>
               <th style="width:28%;">시간</th>
               <th style="width:29%;">담당의</th>
             </tr>
            </thead>
             <tbody>
                <tr>
                  <td>[0001]</td>
                  <td>[조선아]<span class="badge bg-warning">NEW</span></td>
                  <td>[13:00]</td>
                  <td>
                    <a href="#" class="text-muted">
                    <i class="fas fa-search"></i>
                      </a>
                  </td>
                </tr>
                  <tr>
                   <td>[0002]</td>
                   <td>[이다연]</td>
                   <td>[13:30]</td>
                   <td>
                      <a href="#" class="text-muted">
                        <i class="fas fa-search"></i>
                      </a>
                   </td>
                 </tr>
                 <tr>
                   <td>[1000]</td>
                    <td>[김민정]</td>
                    <td>[15:00]</td>
                    <td>
                      <a href="#" class="text-muted">
                        <i class="fas fa-search"></i>
                      </a>
                    </td>
                 </tr>
                  <tr>
                    <td>[0013]</td>
                    <td>[김초롱]</td>
                    <td>[13:00]</td>
                    <td>
                      <a href="#" class="text-muted">
                        <i class="fas fa-search"></i>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td>[0023]</td>
                    <td>[김주련]</td>
                    <td>[16:00]</td>
                    <td>
                      <a href="#" class="text-muted">
                        <i class="fas fa-search"></i>
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td>[0050]</td>
                    <td>[김태영]</td>
                    <td>[18:00]</td>
                    <td>
                      <a href="#" class="text-muted">
                        <i class="fas fa-search"></i>
                      </a>
                    </td>
                  </tr>
                 </tbody>
                </table>
              </div></div>
            <!-- /.card -->
          </div></div>
          </div></section>        
  <!-- Control Sidebar -->
  
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->

</div>
<!-- ./wrapper -->
<%@ include file="/layout/all_footer.jsp"%>
<script>
	$("tr").click(function() {
		console.log("click");
		location.href = "medi_detail".do";
	})
</script>


</body>
</html>
