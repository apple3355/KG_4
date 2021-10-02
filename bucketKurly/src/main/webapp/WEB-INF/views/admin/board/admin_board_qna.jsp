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

    <title>BucketKurly::Admin-Board</title>

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
			    	<h1 class="h3 mb-2 text-gray-800">게시글 관리</h1>
					<p class="mb-4">버캣컬리의 1:1문의를 관리하는 페이지입니다.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                    	<div class="card-header">
                            <h4 class="" style="color: #6406ca; font-weight: bolder; float: left; margin-top:10px;" >1:1 문의 - 답변 대기</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable1" width="100%" cellspacing="0">
                                    <thead>
                                      	<tr>
											<th width="10%">번호</th>
											<th width="20%">문의 종류</th>
											<th width="40%">제목</th>
											<th width="15%">날짜</th>
											<th width="15%">주문회원</th>
										</tr>
                                    </thead>
                                    <tbody>
                                   		<c:forEach items="${board_qnaList_answait}" var="board_qnaList_answait" varStatus="status">	
											<tr>
												<td>${status.count}</td>
												<td><c:out value="${board_qnaList_answait.board_qna_type}"/></td>	
												<td><a href="javascript:void(0);" onClick="fn_qna_answait_details('${board_qnaList_answait.board_qna_no}')"><c:out value="${board_qnaList_answait.board_qna_title}"/></a></td>
												<td><fmt:formatDate value="${board_qnaList_answait.board_qna_regdate}" pattern="yyyy-MM-dd" />
												<td><c:out value="${board_qnaList_answait.board_qna_writer}"/></td>
											</tr>
										</c:forEach>
									</tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header">
                            <h4 class="" style="color: #6406ca; font-weight: bolder; float: left; margin-top:10px;" >1:1 문의 - 답변 완료</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable2" width="100%" cellspacing="0">
                                    <thead>
                                      	<tr>
											<th width="10%">번호</th>
											<th width="20%">문의 종류</th>
											<th width="40%">제목</th>
											<th width="15%">날짜</th>
											<th width="15%">주문회원</th>
										</tr>
                                    </thead>
									<tbody>		
										<c:forEach items="${board_qnaList_anscom}" var="board_qnaList_anscom" varStatus="status">												
											<tr>
												<td>${status.count}</td>
												<td><c:out value="${board_qnaList_anscom.board_qna_type}"/></td>	
												<td><a href="javascript:void(0);" onClick="fn_qna_anscom_details('${board_qnaList_anscom.board_qna_no}')"><c:out value="${board_qnaList_anscom.board_qna_title}"/></a></td>
												<td><fmt:formatDate value="${board_qnaList_anscom.board_qna_regdate}" pattern="yyyy-MM-dd" />
												<td><c:out value="${board_qnaList_anscom.board_qna_writer}"/></td>
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
	    //답변대기 글 상세보기
		function fn_qna_answait_details(qna_no) {
			var url = "${pageContext.request.contextPath}/admin_board_qna_answait.mdo";
			url = url + "?qna_no=" + qna_no;
			location.href = url;	
	    }
		//답변완료 글 상세보기
		function fn_qna_anscom_details(qna_no) {
			var url = "${pageContext.request.contextPath}/admin_board_qna_anscom.mdo";
			url = url + "?qna_no=" + qna_no;
			location.href = url;	
	    }
		
		$("#dataTable1").DataTable({
			// 표시 건수기능 숨기기
			lengthChange: true,
			// 검색 기능 숨기기
			searching: false,
			// 정렬 기능 숨기기
			ordering: true,
			// 정보 표시 숨기기
			info: true,
			// 페이징 기능 숨기기
			paging: true,
		});
    </script>

</body>

</html>