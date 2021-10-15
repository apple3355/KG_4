<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
	<link rel="shortcut icon"
	href="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/favicon_v2.webp"
	type="image/x-icon">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>BucketKurly::Admin-Marketing</title>

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
			    	<h1 class="h3 mb-2 text-gray-800">마케팅 관리</h1>
					<p class="mb-4">버켓컬리의 쿠폰을 관리하는 페이지입니다.</p>

				<!-- DataTales Example -->
				<div class="card shadow mb-4">
					<div class="card-header">
		        		<h4 class="" style="color: #6406ca; font-weight: bolder; float: left; margin-top:10px;" >쿠폰 목록</h4>
		       			<a href="${pageContext.request.contextPath}/admin_coupon_insert.mdo" class="btn btn-primary btn-icon-split" name="register" id="addBtn" style="float: right; position: relative; margin-top:7px;">
							<span class="icon text-white-50">
								<i class="fas fa-plus"></i>
							</span>
							<span class="text">등록하기</span>
						</a> 
		            </div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
								<thead>
									<tr align="center">
										<th width="7%">번호</th>
										<th width="10%">쿠폰번호</th>
										<th width="10%">쿠폰코드</th>
										<th width="15%">쿠폰명</th>
										<th width="10%">이미지</th>
										<th width="10%">발급여부</th>
										<th width="8%">기능</th>
										<th width="10%">할인/적립</th>
										<th width="10%">시작일</th>
										<th width="10%">만료일</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${coupon}" var="coupon" varStatus="status">
										<tr>
											<td>${status.count}</td>
											<td>${coupon.coupon_no }</td>
											<td>${coupon.coupon_code }</td>
											<td><a type="hidden" href="admin_coupon_get.mdo?no=${coupon.coupon_no }">${coupon.coupon_name }</a></td>
											<td><a type="hideen" href="admin_coupon_get.mdo?no=${coupon.coupon_no }">
												<img width="80px" height="50px" src="${coupon.coupon_filepath }" ></a></td>
											<td>${coupon.coupon_status }</td>
											<td>${coupon.coupon_type }</td>
											<td>${coupon.coupon_discount }</td>
											<td><fmt:formatDate value="${coupon.coupon_regdate  }" pattern="yyyy-MM-dd" /></td>
											<td><fmt:formatDate value="${coupon.coupon_enddate }" pattern="yyyy-MM-dd" /></td>
											
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