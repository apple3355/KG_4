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

    <title>BucketKurly::Admin-Marketing</title>

    <!-- Custom fonts for this template -->
    <link href="resources/bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/bootstrap/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="resources/bootstrap/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
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

                <!-- Begin Page Content -->
				<div class="container-fluid">
					<!-- Page Heading -->
			    	<h1 class="h3 mb-2 text-gray-800">마케팅 관리</h1>
					<p class="mb-4">버켓컬리의 쿠폰을 관리하는 페이지입니다.</p>
					
					<!-- DataTales Example -->
				<div class="card shadow mb-4">
					<div class="card-header">
		        			<h4 class="" style="color: #6406ca; font-weight: bolder; float: left; margin-top:10px;" >쿠폰 등록</h4>
		           	</div>
					<div class="card-body">
						<form id="form" action="${pageContext.request.contextPath}/insertCoupon.mdo" method="post" enctype="multipart/form-data">
							<div class="container-fluid">
									<!-- 전체 frame -->
									<ul>						
										<!-- 제목 -->
										<li class="code">
											<div>
												<div class="index">쿠폰코드</div>
												<input class="code_text" type="text" id="coupon_code" name="coupon_code" style="width: 40%" required />
											</div><br>							
										</li>
										<!-- 제목 -->
										<li class="name">
											<div>
												<div class="index">쿠폰명</div>
												<input class="name_text" type="text" id="coupon_title" name="coupon_name" style="width: 40%" required />
											</div><br>							
										</li>							
										<!-- 베너 이미지 업로드 -->
										<li class="img"> 
											<div>
												<div class="index">쿠폰 이미지 : <input type="file" id="coupon_filepath" name="file" required/>
												</div>
												
											</div><br>
										</li>
										
										<!-- 쿠폰 발급여부 -->
										<li class="status">
											<div>
												<div class="index">발급여부</div>
												<input type="radio" id="coupon_status" name="coupon_status" value="발급중"> <span class="ico">발급중</span>
											    <input type="radio" id="coupon_status" name="coupon_status" value="발급중단" checked="checked"> <span class="ico">발급중단</span>						                   	
											</div><br>							
										</li>
										<!-- 쿠폰 유형 -->
										<li class="type">
											<div>
												<div class="index">쿠폰유형</div>
												<input type="radio" id="coupon_type" name="coupon_type" value="할인" checked="checked"> <span class="ico">할인</span>
											    <input type="radio" id="coupon_type" name="coupon_type" value="무료배송" > <span class="ico">무료배송</span>						                   	
											    <input type="radio" id="coupon_type" name="coupon_type" value="생일쿠폰" > <span class="ico">생일쿠폰</span>						                   	
											</div><br>							
										</li>
										
										<!-- 쿠폰 사용조건 : 타입 String 으로 되어있음-->
										<li class="limit">
											<div>
												<div class="index">사용조건</div>
												<input type="radio" id="coupon_limit" name="coupon_limit" value="0" checked="checked"> <span class="ico">0</span>&nbsp;원 이상	
											    <input type="radio" id="coupon_limit" name="coupon_limit" value="10000" > <span class="ico">10000</span>&nbsp;원 이상					                   	
											    <input type="radio" id="coupon_limit" name="coupon_limit" value="30000" > <span class="ico">30000</span>&nbsp;원 이상								                   	
											    <input type="radio" id="coupon_limit" name="coupon_limit" value="50000" > <span class="ico">50000</span>&nbsp;원 이상								                   	
											</div><br>							
										</li>
										
										<!-- 쿠폰 할인금액, 할인율 -->
										<li class="limit">
											<div>
												<div class="index">할인금액/할인율</div>
												<input type="radio" id="coupon_discount" name="coupon_discount" value="5" checked="checked"> <span class="ico">5</span>&nbsp;%
											    <input type="radio" id="coupon_discount" name="coupon_discount" value="10" > <span class="ico">10</span>&nbsp;%						                   	
											    <input type="radio" id="coupon_discount" name="coupon_discount" value="15" > <span class="ico">15</span>&nbsp;%						                   	
											    <input type="radio" id="coupon_discount" name="coupon_discount" value="20" > <span class="ico">20</span>&nbsp;%		<br>
											    <input type="radio" id="coupon_discount" name="coupon_discount" value="3000" > <span class="ico">3000</span>&nbsp;원(무료배송)					                   	
											    <input type="radio" id="coupon_discount" name="coupon_discount" value="10000" > <span class="ico">10000</span>&nbsp;원						                   	
											</div><br>							
										</li>
										
										<!-- 쿠폰 등록방식 -->
										<li class="regway">
											<div>
												<div class="index">등록방식</div>
												<input type="radio" id="coupon_regway" name="coupon_regway" value="자동등록" checked="checked"> <span class="ico">자동등록</span>
											    <input type="radio" id="coupon_regway" name="coupon_regway" value="수동등록" > <span class="ico">수동등록</span>						                   	
											</div><br>							
										</li>
										
										<!-- 기간 -->
										<li class="term">
											<div class="index">쿠폰 사용 기간</div>
											시작 : <input type="date" name="start" id="start" required> ~ 종료 : <input type="date" id="end" name="end" required>
										</li>
										
										<!-- 쿠폰시작일 
										<li class="regdate">
											<div>
												<div class="index">쿠폰시작일</div>
												<input class="title_text" type="text" id="coupon_regdate" name="coupon_regdate" style="width: 50%" required />
											</div><br>							
										</li>	
										<!-- 쿠폰만료일 
										<li class="enddate">
											<div>
												<div class="index">쿠폰만료일</div>
												<input class="title_text" type="text" id="coupon_enddate" name="coupon_enddate" style="width: 50%" required />
											</div><br>							
										</li>	
										-->
										
									</ul>
								</div>
							</form>
						</div>
							
										
						<div class="card-footer">
							<div id="buttondiv">
								<a href="javascript:document.getElementById('form').submit();" class="btn btn-primary btn-icon-split" >
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