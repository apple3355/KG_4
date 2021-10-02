<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="UTF-8">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>BucketKurly::Admin - Admin Management</title>

    <!-- Custom fonts for this template-->
    <link href="resources/bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="resources/bootstrap/css/sb-admin-2.min.css" rel="stylesheet">

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
                    <h1 class="h3 mb-2 text-gray-800">매니저관리</h1>
                    <p class="mb-4">버켓컬리 매니저들의 계정을 관리하는 페이지입니다.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header">
                            <h4 class="" style="color: #6406ca; font-weight: bolder; float: left; margin-top:10px;" >매니저 리스트</h4>
                             <a href="#" class="btn btn-primary btn-icon-split" name="register" id="addBtn" style="float: right; position: relative; margin-top:7px;">
								<span class="icon text-white-50">
									<i class="fas fa-plus"></i>
								</span>
								<span class="text">매니저 등록</span>
							</a>                
                        </div>
                        <div class="card-body">
                            <div class="table-responsive" style="overflow-x: hidden;">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align:center;">
                                    <thead>
                                        <tr>
                                        	<td width ="10%" style="font-weight: bolder;">번호</td>
                                            <td width ="25%" style="font-weight: bolder;">아이디</td>
                                            <td width ="25%" style="font-weight: bolder;">이름</td>
                                            <td width ="20%" style="font-weight: bolder;">직급</td>
                                            <td width ="20%" style="font-weight: bolder;">수정 / 삭제</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                     <c:forEach items="${adminList}" var="ab">	
										<tr id="tr${ab.admin_no}">
											<td>${ab.admin_no}</td>
											<td id="modify_id">${ab.admin_id}</td>
											<td id="modify_name">${ab.admin_name}</td>
											<td>${ab.admin_position}</td>
											<td>
												<div>
													<button name="modify" value="${ab.admin_no}" class="btn btn-outline btn-info" >수정</button>  
                            						<button name="delete" value="${ab.admin_no}" id="delBtn" class="btn btn-outline btn-danger" >삭제</button>
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
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel" ></h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>
    
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
	                        <label for="inputName">성명</label>
	                        <input type="text" class="form-control" id="admin_name" name="admin_name" placeholder="이름을 입력해 주세요">
	                    </div>
	                    <div class="form-group">
	                        <label for="position">직급</label>
	                        <p>
		                        <input type="radio"  name="admin_position" value="Master"> <span class="ico">Master</span>
		                        <input type="radio"  name="admin_position" value="Senior"> <span class="ico">Senior</span>
		                        <input type="radio"  name="admin_position" value="Junior"> <span class="ico">Junior</span>
	                   		</p>
	                    </div>
	                    <div class="form-group">
	                        <label for="InputID">아이디</label>
	                        <input type="text" class="form-control" id="admin_id" name="admin_id" placeholder="아이디를 입력해주세요">
	                    </div>
	                    <div class="form-group">
	                        <label for="inputPassword">비밀번호</label>
	                        <input type="password" class="form-control" id="admin_password" name="admin_password" placeholder="비밀번호를 입력해주세요">
	                    </div>
	                    <div class="form-group">
	                        <label for="inputPasswordCheck" >비밀번호 확인</label>
	                        <input type="password" class="form-control" id="passwordCheck"  placeholder="비밀번호를 다시한번 입력 해 주세요">
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
    <script src="resources/bootstrap/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="resources/bootstrap/js/demo/chart-area-demo.js"></script>
    <script src="resources/bootstrap/js/demo/chart-pie-demo.js"></script>

	<!--유효성 검사 -->
	<script>
	$("a[name = 'register']").on("click", function checks(){ 
		$("#modal-title").text("매니저 등록");
		$("#submit").text("등록");
		$("#myModal").modal();
		if($("#myModal").modal("hide")){
			 $("#admin_name").val("");
        	 $("#admin_position").val("");
        	 $("#admin_id").val("");
        	 $("#admin_password").val("");
        	 $("#passwordCheck").val("");
		}
		$("#submit").on("click", function checks(){ 
			var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/); 
			var getName= RegExp(/^[가-힣]+$/); 
			
			//이름 공백 검사 
			if($("#admin_name").val() == ""){ 
				alert("이름을 입력해주세요"); 
				$("#admin_name").focus(); 
				return false; 
			} 
			
			//아이디 공백 확인 
			if($("#admin_id").val() == ""){ 
				alert("아이디를 입력해주세요"); 
				$("#admin_id").focus(); 
				return false; 
			} 
			
			//아이디 유효성검사 
			if(!getCheck.test($("#admin_id").val())){ 
				alert("4자 이상 12자 이하 영문과 숫자로 입력해주세요"); 
				$("#admin_id").val(""); 
				$("#admin_id").focus(); 
				return false; 
			} 
			
			//비밀번호 공백 확인 
			if($("#admin_password").val() == ""){ 
				alert("패스워드를 입력해주세요"); 
				$("#admin_password").focus(); 
				return false; 
			} 
			
			//아이디 비밀번호 같음 확인 
			if($("#admin_id").val() == $("#admin_password").val()){
			 	alert("아이디와 비밀번호가 일치합니다"); 
				$("#admin_password").val(""); 
				$("#admin_password").focus(); 
				return false; 
			} 
			
			//비밀번호 유효성검사 
			if(!getCheck.test($("#admin_password").val())){ 
				alert("4자 이상 12자 이하 영문과 숫자로 입력해주세요"); 
				$("#admin_password").val(""); 
				$("#admin_password").focus(); 
				return false; 
			} 
			
			//비밀번호 확인란 공백 확인 
			if($("#passwordCheck").val() == ""){ 
				alert("패스워드 확인란을 입력해주세요"); 
				$("#passwordCheck").focus(); 
				return false; 
			} 
			
			//비밀번호 서로확인 
			if($("#admin_password").val() != $("#passwordCheck").val()){ 
				alert("동일한 비밀번호를 입력해주세요"); 
				$("#admin_password").val(""); 
				$("#passwordCheck").val(""); 
				$("#admin_password").focus(); 
				return false; 
			}
			
			var admin_name = $('#admin_name').val();
			var admin_position = $("input[name='admin_position']:checked").val();
			var admin_id = $('#admin_id').val();
			var admin_pw = $('#admin_password').val();
			
			$.ajax({
			    url: 'register.mdo',
			    type: 'POST',
			    dataType: 'text', //서버로부터 내가 받는 데이터의 타입
			    data:  {admin_name, admin_position, admin_id, admin_pw},
	 
			    success: function(data){
			         if(data == 0){
			        	 alert("매니저 등록 성공");
			        	 $("#admin_name").val("");
			        	 $("#admin_position").val("");
			        	 $("#admin_id").val("");
			        	 $("#admin_password").val("");
			        	 $("#passwordCheck").val("");
			        	 $("#myModal").modal("hide");
			         }else{
				         alert("매니저 등록 실패 다시 시도해주세요");
				         $("#admin_name").val("");
			        	 $("#admin_position").val("");
			        	 $("#admin_id").val("");
			        	 $("#admin_password").val("");
			        	 $("#passwordCheck").val("");
			        	 $("#myModal").modal("hide");
				     }
			    },
			    error: function (){        
			                      
			    }
			  });
		
		})
	})
	</script>
	
	<script>
	$("button[name = 'modify']").on("click", function checks(){ 
		var str = "";
		var tr = $(this).parent().parent().parent();
		var td = tr.children();
		var modify_no = td.eq(0).text();
		var modify_id = td.eq(1).text();
		var modify_name = td.eq(2).text();
		
		$("#admin_id").val(modify_id);
		$("#admin_name").val(modify_name);
		$("#modal-title").text("매니저 수정");
		$("#submit").text("수정");
		$("#myModal").modal();
		
// 		if($("#myModal").modal("hide")){
// 			$("#admin_name").val("");
//        	 	$("#admin_position").val("");
//        	 	$("#admin_id").val("");
//        	 	$("#admin_password").val("");
//        	 	$("#passwordCheck").val("");
// 		}
		
		
		
 		$("#submit").on("click", function checks(){
 			var admin_name = $('#admin_name').val();
 			var admin_position = $("input[name='admin_position']:checked").val();
 			var admin_id = $('#admin_id').val();
 			var admin_pw = $('#admin_password').val();
			$.ajax({
			    url: 'admin_modify.mdo',
			    type: 'POST',
			    dataType: 'text', //서버로부터 내가 받는 데이터의 타입
			    data:  {modify_no, admin_id, admin_name, admin_position, admin_pw},
	 
			    success: function(data){
			         if(data == 0){
			        	 alert("매니저 수정 성공");
			        	 $("#admin_name").val("");
			        	 $("#admin_position").val("");
			        	 $("#admin_id").val("");
			        	 $("#admin_password").val("");
			        	 $("#passwordCheck").val("");
			        	 $("#myModal").modal("hide");
			         }else{
				         alert("매니저 수정 실패 다시 시도해주세요");
				         $("#admin_name").val("");
			        	 $("#admin_position").val("");
			        	 $("#admin_id").val("");
			        	 $("#admin_password").val("");
			        	 $("#passwordCheck").val("");
			        	 $("#myModal").modal("hide");
				     }
			    },
			    error: function (){        
			                      
			    }
			  });
 		})
	
	})
	</script>
	
	<script>
	$("button[name = 'delete']").on("click", function checks(){ 
		var str = "";
		var tr = $(this).parent().parent().parent();
		var td = tr.children();
		var modify_no = td.eq(0).text();
		var modify_id = td.eq(1).text();
		if(confirm(modify_id + "를 삭제하시겠습니까?")){
			$.ajax({
			    url: 'admin_delete.mdo',
			    type: 'POST',
			    dataType: 'text', //서버로부터 내가 받는 데이터의 타입
			    data:  {modify_no},
	 
			    success: function(data){
			         if(data == 0){
			        	 alert("매니저 삭제 성공");
			         }else{
				         alert("매니저 삭제 실패 다시 시도해주세요");
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