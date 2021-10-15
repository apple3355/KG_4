<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="UTF-8">


<head>
<link rel="shortcut icon"
	href="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/favicon_v2.webp"
	type="image/x-icon">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>BucketKurly::Admin-Marketing</title>

<!-- Custom fonts for this template -->
<link href="resources/bootstrap/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="resources/bootstrap/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link
	href="resources/bootstrap/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

<style type="text/css">
#buttondiv {
	text-align: right;
	margin-top: 5px;
	margin-bottom: 8px;
}
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


				<div class="container-fluid">
					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">마케팅 관리</h1>
					<p class="mb-4">버켓컬리의 배너를 관리하는 페이지입니다.</p>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header">
							<h4 class=""
								style="color: #6406ca; font-weight: bolder; float: left; margin-top: 10px;">배너
								수정/삭제</h4>
						</div>
						<div class="card-body">
							<form id="form"
								action="${pageContext.request.contextPath}/updateBanner.mdo"
								method="post" enctype="multipart/form-data">
								<input name="no" type="hidden" value="${banner.banner_no }">
								<!-- 전체 frame -->
								<ul>
									<!-- 제목 -->
									<li class="title">
										<div>
											<div class="index">제목</div>
											<input class="title_text" type="text" name="banner_title"
												style="width: 50%" value="${banner.banner_title }" required />
										</div>
									</li>
									<br>
									<br>
									<!-- 이미지 업로드 -->
									<li class="img">
										<div>
											<div class="index">배너 이미지</div>
											<input type="file" name="file" /> <img
												src="${banner.banner_filepath }" width="850px">
										</div>
									</li>
									<br>
									<br>
									<!-- 내용 -->
									<li class="contents">
										<div>
											<div class="index">내용</div>
											<input type="text" name="banner_contents" style="width: 50%;"
												value="${banner.banner_contents }" required />
										</div>
									</li>
								</ul>
							</form>
						</div>
						<div class="card-footer">
							<div id="buttondiv">
								<a href="javascript:document.getElementById('form').submit();" class="btn btn-info btn-icon-split"> 
									<span class="icon text-white-50"> <i class="fas fa-edit"></i></span> 
									<span class="text">수정 하기</span>
								</a> 
								<a href="javascript:void(0);" onClick="fn_delete('${banner.banner_no}')" class="btn btn-danger btn-icon-split"> 
									<span class="icon text-white-50"> <i class="fas fa-trash"></i> </span> 
									<span class="text">삭제 하기</span>
								</a> 
								<a href="javascript:history.back();" class="btn btn-secondary btn-icon-split"> 
									<span class="icon text-white-50"><i class="fas fa-arrow-right"></i> </span> 
									<span class="text">목록 보기</span>
								</a>
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


	<script>
	function fn_delete(banner_no) {
	  	  var result = confirm("이 배너를 삭제하시겠습니까? ");
	      if(result){
	    	 	var url = "${pageContext.request.contextPath}/deleteBanner.mdo";
	  			url = url + "?no=" + banner_no;
	  			location.href = url;
	            alert("배너가 삭제되었습니다.");
	      }else{
		  	    location.href = "javascript:void(0);";
	      }
  	
	}
	</script>
</body>

</html>