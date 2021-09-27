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

    <title>BucketKurly::Admin-Goods</title>

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

                    <!-- Page Heading / 기본 테이블 템플릿 사용을 원하시면 해당 부분 아래로 수정하시면 됩니다.-->
                    <h1 class="h3 mb-2 text-gray-800">게시글 관리</h1>
                   
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">게시글 상세보기</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                            <c:set var="no" value="${vo.board_notice_no}" />
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                      	<tr>
											<th width="20%">글번호</th><td><c:out value="${no}"/></td>
											<th width="20%">조회수</th><td>${vo.board_notice_hits}</td>
										</tr>
										<tr>
											<th width="20%">작성자</th><td>${vo.board_notice_writer}</td>
											<th width="20%">작성일</th><td><fmt:formatDate value="${vo.board_notice_date}" pattern="yyyy-MM-dd" /></td>
										</tr>
										<tr>
											<th width="20%">제목</th><td colspan="3">${vo.board_notice_title}</td>
										</tr>
										<tr>
											<th width="20%">내용</th><td colspan="3">${vo.board_notice_content}</td>
										</tr>
										<tr>
										
										
											<td colspan="4" align="right">
												<button type="button" class="btn btn-outline btn-info" 
													onClick="fn_updatePage('${no}')"> 
													수정하기
												</button>
												<button type="button" class="btn btn-outline btn-danger" 
													onclick="fn_delete('${no}')">
													삭제하기
												</button>
												<button type="button" class="btn btn btn-outline btn-primary" 
													onclick="location.href='${pageContext.request.contextPath}/admin_board_notice.mdo'">
													목록보기
												</button>
												
											</td>
										</tr>
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
  	//이전 버튼 이벤트
    function fn_updatePage(notice_no) {
    	var url = "${pageContext.request.contextPath}/admin_board_notice_update.mdo";
		url = url + "?notice_no=" + notice_no;
		location.href = url;
	}
  	function fn_delete(notice_no) {
	  	  var result = confirm("이 게시글을 삭제하시겠습니까? ");
	      if(result){
	    	 	var url = "${pageContext.request.contextPath}/admin_board_notice_deleteDB.mdo";
	  			url = url + "?notice_no=" + notice_no;
	  			location.href = url;
	            alert("게시글이 삭제되었습니다.");
	      }else{
		  	    location.href = "javascript:void(0);";
	      }
    	
	}
  
    </script>
   
</body>

</html>