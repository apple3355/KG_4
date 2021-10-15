<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
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

    <title>BucketKurly::Admin-TermsInsert</title>

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
    	<h1 class="h3 mb-2 text-gray-800">약관 관리</h1>
		<p class="mb-4">버캣컬리의 약관을 관리하는 페이지입니다.</p>
		
		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header">
				<h4 class="" style="color: #6406ca; font-weight: bolder; float: left; margin-top:10px;" >약관등록</h4>
			</div>
			<div class="card-body">
				<div class="table-responsive">

			<form id = "form" action="${pageContext.request.contextPath}/insertAdminTerms.mdo" method="post">
				<input type="hidden" name="termNum">
					<div class="container-fluid">
					<!-- 전체 frame -->
					<ul>	
						<!-- 약관	번호 -->
						<li class="termNum">
							<div>
								<div class="index">약관번호</div>
								<input class="terms_num" id="terms_no" name="terms_no" placeholder="번호를 입력해주세요" style="width:175px"value="${terms_no}">						
							</div><br>							
						</li>			
									
																
						<!-- 약관제목 -->
						<li class="title">
							<div>
								<div class="index">약관이름</div>
								<input class="title_text" type="text" id="terms_title" name="terms_title" placeholder="제목을 입력해주세요"style="width: 50%" value="${terms_title}" required />
							</div><br>							
						</li>	
											
						<!-- 약관필수 여부 -->
						<li class="essential">
							<div>
								<div class="index">약관필수 여부</div>
								<input type="radio" id="terms_essential" name="terms_essential" value="필수" checked="checked"> <span class="ico">필수</span>
							    <input type="radio" id="terms_essential" name="terms_essential" value="선택"> <span class="ico">선택</span>						                   	
							</div><br>							
						</li>
						
						<!-- 등록일 -->
						<li class="reg_date">
							<div>
								<label for="label_terms_reg_date">등록일</label> 
								<input type="date" class="form-control" id="terms_reg_date" name="terms_reg_date" value="${terms_reg_date}" readonly>					                   	
							</div><br>							
						</li>		
					
						<!-- 내용 -->
                  <li class="contents">
                     <div class="index">
                        <div class="index_con">약관내용</div>
                     </div>                     
                     <div class="index_text">
                        <textarea name="terms_contents" rows="15" style="width: 100%" required>${terms_contents}</textarea>
                     </div>
                  </li>
						
						
					</ul>
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
		
			</form>
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

	<!-- 등록일: 오늘 날짜 자동 셋팅 -->
	<script>
  		document.getElementById('terms_reg_date').value = new Date().toISOString().substring(0, 10);;
	</script>
	
	<!--약관등록 모달의 유효성 검사 -->
	<script>
	$("#submit").on("click", function checks(){ 	
		//약관번호 
		if($("#terms_no").val() == ""){ 
			alert("약관번호를 입력해주세요"); 
			$("#terms_no").focus(); 
			return false; 
		} 		
		//약관제목
		if($("#terms_title").val() == ""){ 
			alert("약관제목을 입력해주세요"); 
			$("#terms_title").focus(); 
			return false; 
		} 		
		//약관내용
		if($("#terms_contents").val() == ""){ 
			alert("약관내용을 입력해주세요"); 
			$("#terms_contents").focus(); 
			return false; 
		} 				
		var terms_no = $('#terms_no').val();
		var terms_title = $('#terms_title').val();
		var terms_essential = $('input[name="terms_essential"]:checked').val();
		var terms_contents = $('#terms_contents').val();
		var terms_reg_date = $('#terms_reg_date').val();
		
		$.ajax({
		    url: 'insertAdminTerms.mdo',
		    type: 'POST',
		    dataType: 'text', //서버로부터 내가 받는 데이터의 타입
		    data:  {terms_no, terms_title, terms_essential, terms_contents, terms_reg_date},
 
		    success: function(data){
		         if(data == 0){
		        	 alert("약관등록 성공");
		        	 $("#terms_no").val("");
		        	 $("#terms_title").val("");
		        	 $('input[name="terms_essential"]').val("");
		        	 $("#terms_contents").val("");
		        	 $("#terms_reg_date").val("");
		        	 $("#adminTermsModal").modal("hide");
		         }else{
			         alert("약관등록 실패 다시 시도해주세요");
			     }
		    },
		    error: function (){        
		                      
		    }
		  });
	
	})
	</script>

</body>

</html>