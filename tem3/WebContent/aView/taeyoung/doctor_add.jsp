<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/layout/hos_head.jsp"%>
<%@ include file="/layout/hos_menu.jsp"%>

		<section class="content-header">
			<div class="container-fluid">
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>의사 추가</h1>
				</div>
			</div>
		</div>
	</section>
   <!-- Main content -->
    <!-- Horizontal Form -->
 	<section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12" >
            <div class="card card-secondary">
              <div class="card-header">
                <h3 class="card-title">
                	<i class="fas fa-user-plus" style="margin-left:280px;"></i></h3>
              </div>
              <!-- /.card-header -->
     <!-- form start -->
       <form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/HDoctorAddVerify.do" onsubmit="return checkall();">
         <div class="card-body" style="height:300px;">
         <div class="form-group row">
           <label for="inputPassword3" class="col-sm-2 col-form-label">의사이름</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="artrName" name="artrName">
          </div>
        </div>
         <div class="form-group row">
            <label for="inputPassword3" class="col-sm-2 col-form-label">진료과목</label>
            <div class="col-sm-10">
             <select class="form-control" name="artrSub" id="artrSub">
              <option></option>
                <option value="CS10">내과</option>
                <option value="CS20">소아과</option>
                <option value="CS30">외과</option>
                <option value="CS40">정형외과</option>
               	<option value="CS50">치과</option>
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
       <button type="submit" class="btn btn-secondary">등록</button>
        <a class="btn btn-default float-right" href="${pageContext.request.contextPath}/HDoctorList.do">취소</a>
     </div>
     <!-- /.card-footer -->
    </form>
  </div>
  <!-- /.card -->
	</div>
</div>
</div></section>
          <!--/.col (left) -->
          <!-- right column -->
          
          		</div>
          		</section>
			
  <!-- /.content-wrapper -->

<%@ include file="/layout/all_footer.jsp"%>
<script>
        function checkall() {
            var ty1 = document.getElementById("artrName");
            var ty2 = document.getElementById("artrSub");
            if (ty1.value == "") {
                alert("이름을 입력해주세요.");
                ty1.focus();
                return false;
            }
            if (ty2.value == "") {
                alert("진료과목을 선택해주세요.");
                ty2.focus();
                return false;
            }
            return true;
        }
    </script>
</body>
</html>
