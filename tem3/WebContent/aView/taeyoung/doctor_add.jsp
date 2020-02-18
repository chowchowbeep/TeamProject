<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/layout/hos_head.jsp"%>
<%@ include file="/layout/hos_menu.jsp"%>

   <!-- Main content -->
    <!-- Horizontal Form -->
 	<section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12" >
            <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">
                	<i class="fas fa-user-plus" style="margin-left:280px;"></i></h3>
              </div>
              <!-- /.card-header -->
     <!-- form start -->
       <form class="form-horizontal" method="post" action="doctor_add_verify.jsp">
         <div class="card-body" style="height:300px;">
         <div class="form-group row">
           <label for="inputPassword3" class="col-sm-2 col-form-label">의사이름</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputPassword3" placeholder="의사이름">
          </div>
        </div>
         <div class="form-group row">
            <label for="inputPassword3" class="col-sm-2 col-form-label">진료과목</label>
            <div class="col-sm-10">
             <select class="form-control" id="sub">
                <option>내과</option>
                <option>소아과</option>
                <option>외과</option>
                <option>정형외과</option>
               	<option>치과</option>
              </select>
            </div>
         </div>
           <div class="form-group row">
            <div class="offset-sm-2 col-sm-10">
                     <!-- <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck2">
                        <label class="form-check-label" for="exampleCheck2">real add?</label></div>  -->
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
	</div>
</div>
</div></section>
          </div>
          <!--/.col (left) -->
          <!-- right column -->
  <!-- /.content-wrapper -->

<%@ include file="/layout/all_footer.jsp"%>
</body>
</html>
