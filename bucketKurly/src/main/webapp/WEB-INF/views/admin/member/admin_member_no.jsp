<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="UTF-8">

<!-- 본 파일은 템플릿입니다.  -->

<head>
	<link rel="shortcut icon"
	href="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/favicon_v2.webp"
	type="image/x-icon">
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
	<style type="text/css">
		#buttondiv{text-align: right; margin-top:5px; margin-bottom:8px;}
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
                
                	<!-- Page Heading -->
			    	<h1 class="h3 mb-2 text-gray-800">회원 관리</h1>
					<p class="mb-4">버켓컬리 회원을 관리하는 페이지입니다.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                    	<div class="card-header">
                            <h4 class="" style="color: #6406ca; font-weight: bolder; float: left; margin-top:10px;" >회원 상세 조회</h4>
                        </div>
                        <div class="card-body">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0"  style="text-align:center; table-layout: fixed;">
                               <c:set var="member_status" value="${vo.member_status}" />
                               <c:choose> 
								    <c:when test="${member_status == 0}">
								         <c:set var="status" value="탈퇴" />
								    </c:when>
								      <c:when test="${member_status == 1}">
								         <c:set var="status" value="활성화" />
								    </c:when>
								      <c:when test="${member_status == 2}">
								         <c:set var="status" value="휴면" />
								    </c:when>
								</c:choose>
                                 <tr>
									<th width="10%">회원번호</th><td width="30%"><c:out value="${vo.member_no}"/></td><th width="10%">계정상태</th><td colspan="3">${status}</td>
								</tr>
								<tr>
									<th width="10%">아이디</th><td>${vo.member_id}</td><th width="10%">마지막로그인</th><td colspan="3" >${vo.member_last_login}</td>
								</tr>
								<tr>	
									<th width="10%">이름</th><td><c:out value="${vo.member_name}"/></td><th width="10%">성별</th><td><c:out value="${vo.member_sex}"/></td><th width="10%">생년월일</th><td><c:out value="${vo.member_birth}"/></td>
								</tr>
								<tr>	
									<th width="10%">이메일</th><td><c:out value="${vo.member_email}"/></td><th width="10%">휴대폰번호</th><td colspan="3"><c:out value="${vo.member_phone}"/></td>
								</tr>
								<tr>	
									<th width="10%">우편번호</th><td><c:out value="${vo.member_zipcode}"/></td><th width="10%">주소</th><td colspan="3" ><c:out value="${vo.member_address1}"/><br><c:out value="${vo.member_address2}"/></td>
								</tr>
								<tr>	
									<th width="10%">회원등급</th><td><c:out value="${vo.member_rank}"/></td><th width="10%">회원포인트</th><td><c:out value="${vo.member_point}"/></td><th width="10%">누적금액</th><td><c:out value="${vo.member_total_cost}"/></td>
								</tr>
                               </table>
                           </div>
                        <div class="card-footer">
                        	<div id="buttondiv">
								<a href="javascript:history.back();" class="btn btn-secondary btn-icon-split">
									<span class="icon text-white-50">
										<i class="fas fa-arrow-right"></i>
									</span>
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
   </body>

</html>