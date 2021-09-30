<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="UTF-8">


<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>BucketKurly::Admin-TermsList</title>

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
					<h1 class="h3 mb-2 text-gray-800">카테고리 상품 관리</h1>
					<p class="mb-4">버켓컬리의 카테고리 상품 관리페이지 입니다.</p>
					<br>
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="" style="color: #5f0080; font-weight: bolder;">카테고리 상품 리스트</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">

								<form action="${pageContext.request.contextPath}/admin_category_goods_insert.mdo" method="post">
									<div align="right">
										<input type="submit" class="btn btn-warning btn-icon-split" style="padding: 5px; background: #5f0080; border: #5f0080"
											value="상품등록">
									</div>
									<div class="my-2"></div>
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                      	<tr>
                                      		<th>No</th>
											<th>1차<br>카테고리</th>
											<th>2차<br>카테고리</th>
											<th>상품<br>카테고리</th>
											<th>썸네일</th>
											<th>상품명</th>
											<th>본문 제목</th>										
										</tr>
                                    </thead>
                                    <!--<tfoot>  필요 없으실 경우 tfoot 부분은 주석처리하시면 됩니다.
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Office</th>
                                            <th>Age</th>
                                            <th>Start date</th>
                                            <th>Salary</th>
                                        </tr>
                                    </tfoot> -->
                                    
                                   <c:forEach items="${admin_Category_goods}" var="admin_Category_goods" varStatus="status">	
										<tbody>													
											<tr>
												<td>${status.count}</td>
												<td><c:out value="${admin_Category_goods.category_goods_parent_no}"/></td>
												<td><c:out value="${admin_Category_goods.category_goods_sub_no}"/></td>
												<td><c:out value="${admin_Category_goods.category_goods_no}"/></td>
												<td><a href="javascript:void(0);" onClick="fn_category_details('${admin_Category_goods.category_goods_no}')"><img src="${admin_Category_goods.category_goods_image_thumb}"  style="width: 20%"/></a></td>
												<td><a href="javascript:void(0);" onClick="fn_category_details('${admin_Category_goods.category_goods_no}')"><c:out value="${admin_Category_goods.category_goods_name}"/></a></td>
												<td><a href="javascript:void(0);" onClick="fn_category_details('${admin_Category_goods.category_goods_no}')"><c:out value="${admin_Category_goods.category_goods_contents_tit_main}"/></a></td>												
											</tr>
										</tbody>
									</c:forEach>
                                </table>
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
    
    <script>
	    //페이지 번호 클릭
		function fn_category_details(category_goods_no) {
			var url = "${pageContext.request.contextPath}/admin_category_goodslist_no.mdo";
			url = url + "?category_goods_no=" + category_goods_no;
			location.href = url;	
	    }
    </script>

</body>

</html>