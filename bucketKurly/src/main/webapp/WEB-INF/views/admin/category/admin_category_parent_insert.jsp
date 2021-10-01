<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="UTF-8">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache"> <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">

<!-- 본 파일은 템플릿입니다.  -->

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>BucketKurly::Admin-Goods</title>

    <!-- Custom fonts for this template -->
    <link href="resources/bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/bootstrap/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="resources/bootstrap/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
	<style type="text/css">
		#buttondiv{text-align: right;}
	</style>
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

                    <!-- Page Heading / 기본 테이블 템플릿 사용을 원하시면 해당 부분 아래로 수정하시면 됩니다.-->
                    <h1 class="h3 mb-2 text-gray-800">카테고리 관리</h1>
                   
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">상위 카테고리 등록</h6>
                        </div>
                        
                        <div class="card-body">
                            <div class="table-responsive" style="text-align:center;">
	                            <form method="post" role="form" action="${pageContext.request.contextPath}/admin_category_parent_insertDB.mdo" enctype="multipart/form-data">
	                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="vertical-align:middle;">
	                                      	<tr>
												<th width="20%">제목</th><td><input class="form-control" name="category_parent_name"></td>
											</tr>
											<tr>
												<th width="20%">icon</th><td><input type="file" name="file" style="width:50%"></td>
											</tr>
											<tr>
												<th width="20%">icon(color)</th><td><input type="file" name="file" style="width:50%"></td>
											</tr>
											
	                                </table>
	                                <div id="buttondiv">
										<a href="javascript:form.submit();" class="btn btn-success btn-icon-split" >
											<span class="icon text-white-50">
												<i class="fas fa-check"></i>
											</span>
											<span class="text">등록 하기</span>
										</a>
										<a href="javascript:history.back();" class="btn btn-secondary btn-icon-split">
											<span class="icon text-white-50">
												<i class="fas fa-arrow-right"></i>
											</span>
											<span class="text">목록 보기</span>
										</a>
									</div>
								</form>
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

</body>

</html>