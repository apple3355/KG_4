<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="UTF-8">


<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>BucketKurly::Admin-Banner</title>

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


                 <form action="/updateBanner.mdo" method="post" enctype="multipart/form-data">
		<input name="no" type="hidden" value="${banner.banner_no }">
		<div class="container-fluid">
			<!-- Page Heading -->
			 <h1 class="h3 mb-2 text-gray-800">배너관리</h1>
                  
			<br>
			<!-- DataTales Example -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="" style="color: #5f0080; font-weight: bolder;">배너 수정/삭제</h6>
				</div>
				<div class="card-body">
					<!-- 전체 frame -->
					<ul>
						<!-- 제목 -->
						<li class="title">
							<div>
								<div class="index">제목</div>
								<input class="title_text" type="text" name="banner_title" style="width: 50%" value="${banner.banner_title }" required />
							</div>
						</li>
						<!-- 베너 이미지 업로드 -->
						<li class="img">
							<div>
								<div class="index">배너 이미지</div>
								<input type="file" name="file"/>
								<img src="${banner.banner_filepath }" width="850px">
							</div>
						</li>
						<!-- 베너 내용 -->
						<li class="contents">
							<div>
								<div class="index">내용</div>
								<input type="text" name="banner_contents" style="width: 50%;" value="${banner.banner_contents }" required/>
							</div>
						</li>
					</ul>
					<div align="center">
                  		<input style="padding: 2px" class="btn btn-warning btn-icon-split" type="submit" value="수정하기" id="registerBtn"  />
               		</div>
              		<div align="right">
		                <a href="admin_banner_insert.mdo" class="btn btn-warning btn-icon-split" style="padding: 2px; background:#5f0080; border: #5f0080">
		                	<span class="text">등록하기</span>
		               	</a>&nbsp;&nbsp;&nbsp; 
		               	<a href="deleteBanner.mdo?no=${banner.banner_no}" class="btn btn-danger btn-icon-split" id="deleteBtn" > 
		               		<span class="text">삭제하기</span>
		                </a>&nbsp;&nbsp;&nbsp; 
		                <a href="admin_banner_getList.mdo" class="btn btn-light btn-icon-split" > 
			                <span class="text">목록가기</span>
		                </a>
            	   </div>
				</div>
			</div>

		</div>
	</form>
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