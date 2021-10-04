<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="UTF-8">

<!-- 본 파일은 템플릿입니다.  -->

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>BucketKurly::Admin-Member</title>

    <!-- Custom fonts for this template -->
    <link href="resources/bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/bootstrap/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="resources/bootstrap/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
	
</head>

<body id="page-top">
	<!-- Page Wrapper -->
    <div id="wrapper">

  	<!-- header -->
	<%@ include file="/WEB-INF/views/admin_layout/admin_sidebar.jsp"%>  		

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- Main Content -->
            <div id="content">
  				
  				<!-- topbar -->
      			<%@ include file="/WEB-INF/views/admin_layout/admin_topbar.jsp"%>  		

                <!-- Begin Page Content -->
                <div class="container-fluid">
                
                	<!-- Page Heading -->
			    	<h1 class="h3 mb-2 text-gray-800">회원 관리</h1>
					<p class="mb-4">버켓컬리 회원등급을 관리하는 페이지입니다.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                    	<div class="card-header">
                            <h4 class="" style="color: #6406ca; font-weight: bolder; float: left; margin-top:10px;" >회원 등급 목록</h4>
                             <a href="#" class="btn btn-primary btn-icon-split" name="register" id="addBtn" style="float: right; position: relative; margin-top:7px;">
								<span class="icon text-white-50">
									<i class="fas fa-plus"></i>
								</span>
								<span class="text">등급 추가</span>
							</a>                
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0"  style="text-align:center;">
                                    <thead>
                                    	<tr>
											<th>번호</th>
											<th>등급 이름</th>
											<th>적립금</th>   
											<th>누적금액</th>
											<th>회원 수</th>
										</tr>
                                    </thead>
                                    <tbody>	
	                               		 <c:forEach items="${admin_member_membership}" var="admin_member_membership" varStatus="status">	
											<tr>
											 	<td>${status.count}</td>
												<td><c:out value="${admin_member_membership.member_membership_name}"/></td>
												<td><c:out value="${admin_member_membership.member_membership_savemoney}"/>%</td>
												<td><c:out value="${admin_member_membership.member_membership_performance}"/></td>
												<td>
													<div>
														<button name="modify" value="${admin_member_membership.member_membership_no}" class="btn btn-outline btn-info" >수정</button>  
	                            						<button name="delete" value="${admin_member_membership.member_membership_no}" id="delBtn" class="btn btn-outline btn-danger" >삭제</button>
                            						</div>
												</td>
											</tr>
										 </c:forEach>
									</tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->


        <!-- Footer -->
     		 <%@ include file="/WEB-INF/views/admin_layout/admin_footer.jsp"%>  
        <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->
    
    <!-- Modal-->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 id="modal-title" style="color: #6406ca; font-weight: bolder; margin-top: 10px;"></h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close" style="margin-top:7px;">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                	<div class="col-sm-6 col-md-offset-3">
	                <form role="form" id="register" method="post">
	                    <div class="form-group">
	                        <label for="inputName">등급 이름</label>
	                        <input type="text" class="form-control" id="name" name="name" placeholder="등급이름을 입력해주세요">
	                    </div>
	                    <div class="form-group">
	                        <label for="inputSavemoney">적립금</label><label>(%)</label>
	                        <input type="text" class="form-control" id="savemoney" name="savemoney" placeholder="적립금을 입력해주세요">
	                       
	                    </div>
	                    <div class="form-group">
	                        <label for="inputPerformance">누적금액</label><label>(원)</label>
	                        <input type="text" class="form-control" id="performance" name="performance" placeholder="누적금액을 입력해주세요">
	                    </div>
	                 </form>
	                 </div>
                </div>
                <div class="modal-footer">
                	<button id="submit" type="button" class="btn btn-primary">등록</button>
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="resources/bootstrap/vendor/jquery/jquery.min.js"></script>
    <script src="resources/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="resources/bootstrap/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="resources/bootstrap/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="resources/bootstrap/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="resources/bootstrap/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="resources/bootstrap/js/demo/datatables-demo.js"></script>
    <script>
	$("a[name = 'register']").on("click", function checks(){ 
		$("#modal-title").text("등급 추가");
		$("#submit").text("추가");
		$("#myModal").modal();
		if($("#myModal").modal("hide")){
			 $("#name").val("");
        	 $("#savemoney").val("");
        	 $("#performance").val("");
        	
		}
		$("#submit").on("click", function checks(){ 
			
			var name = $('#name').val();
			var savemoney = $("#savemoney").val();
			var performance = $('#performance').val();
			
			$.ajax({
			    url: 'member_membership_insert.mdo',
			    type: 'POST',
			    dataType: 'text', //서버로부터 내가 받는 데이터의 타입
			    data:  {name, savemoney, performance},
	 
			    success: function(data){
			         if(data == 0){
			        	 alert("등급 추가 성공");
			        	 $("#name").val("");
			        	 $("#savemoney").val("");
			        	 $("#performance").val("");
			        	 $("#myModal").modal("hide");
			        	 window.location.href = "${pageContext.request.contextPath}/admin_member_membership.mdo";
			         }else{
				         alert("등급 추가 실패.. 다시 시도해주세요");
				         $("#name").val("");
			        	 $("#savemoney").val("");
			        	 $("#performance").val("");
			        	 
				     }
			    },
			    error: function (){        
			                      
			    }
			  });
		
		})
	})
	
	$("button[name = 'modify']").on("click", function checks(){ 
		var tr = $(this).parent().parent().parent();
		var td = tr.children();
		var modify_no = $(this).attr('value');
		var modify_name = td.eq(1).text();
		var split = td.eq(2).text();
		var strArray = split.split("%");
		var modify_savemoney = strArray[0];
		var modify_performance = td.eq(3).text();
		
		 $("#name").val(modify_name);
    	 $("#savemoney").val(modify_savemoney);
    	 $("#performance").val(modify_performance);
		
		$("#modal-title").text("등급 수정");
		$("#submit").text("수정");
		$("#myModal").modal();
		
 		$("#submit").on("click", function checks(){
 			var membership_name = $('#name').val();
 			var membership_savemoney = $('#savemoney').val();
 			var membership_performance = $('#performance').val();
			$.ajax({
			    url: 'member_membership_update.mdo',
			    type: 'POST',
			    dataType: 'text', //서버로부터 내가 받는 데이터의 타입
			    data:  {modify_no, membership_name, membership_savemoney, membership_performance},
	 
			    success: function(data){
			         if(data == 0){
			        	 alert("등급 수정 성공");
			        	 $("#name").val("");
			        	 $("#savemoney").val("");
			        	 $("#performance").val("");
			        	 $("#myModal").modal("hide");
			        	 window.location.href = "${pageContext.request.contextPath}/admin_member_membership.mdo";

			         }else{
				         alert("등급 수정 실패.. 다시 시도해주세요");
				         $("#name").val("");
			        	 $("#savemoney").val("");
			        	 $("#performance").val("");
			        	 $("#myModal").modal("hide");
				     }
			    },
			    error: function (){        
			                      
			    }
			  });
 		})
	
	})
	
	$("button[name = 'delete']").on("click", function checks(){ 
		var str = "";
		var tr = $(this).parent().parent().parent();
		var td = tr.children();
		var modify_no = $(this).attr('value');
		var modify_name = td.eq(1).text();
		if(confirm(modify_name + "등급 삭제하시겠습니까?")){
			$.ajax({
			    url: 'member_membership_delete.mdo',
			    type: 'POST',
			    dataType: 'text', //서버로부터 내가 받는 데이터의 타입
			    data:  {modify_no},
	 
			    success: function(data){
			         if(data == 0){
			        	 alert("등급 삭제 성공");
			        	 window.location.href = "${pageContext.request.contextPath}/admin_member_membership.mdo";
			         }else{
				         alert("등급 삭제 실패.. 다시 시도해주세요");
				     }
			    },
			    error: function (){        
			                      
			    }
			  });
		}
	
	})
	</script>
	
</body>

</html>