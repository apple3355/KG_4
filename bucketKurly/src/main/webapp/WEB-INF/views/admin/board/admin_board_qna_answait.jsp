<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
%>
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

    <title>BucketKurly::Admin-Board</title>
    <script src="http://code.jquery.com/jquery-latest.js"></script>

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
			    	<h1 class="h3 mb-2 text-gray-800">게시글 관리</h1>
					<p class="mb-4">버캣컬리의 1:1문의를 관리하는 페이지입니다.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                    	<div class="card-header">
                            <h4 class="" style="color: #6406ca; font-weight: bolder; float: left; margin-top:10px;" >1:1 문의 - 질문</h4>
                        </div>
                        <div class="card-body">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
								<tr>
									<th width="15%">문의 종류</th><td width="35%"><c:out value="${vo_question.board_qna_type}"/></td>
									<th width="15%">작성자(회원번호)</th><td width="35%"><c:out value="${vo_question.board_qna_writer}"/>(<c:out value="${vo_question.board_qna_member_no}"/>)</td>
								</tr>
								<tr>
									<th>제목</th><td><c:out value="${vo_question.board_qna_title}"/></td>
									<th>날짜</th><td><fmt:formatDate value="${vo_question.board_qna_regdate}" pattern="yyyy-MM-dd" /></td>
								</tr>
								<tr>
									<th>내용</th><td colspan="3"><c:out value="${vo_question.board_qna_content}"/></td>
								</tr>
                            </table>
                        </div>
                    </div>


                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                    	<div class="card-header">
                            <h4 class="" style="color: #6406ca; font-weight: bolder; float: left; margin-top:10px;" >1:1 문의 - 답변</h4>
                        </div>
                        <div class="card-body">
                           	<form name = "form" role="form" id="form" action="${pageContext.request.contextPath}/admin_board_qna_answer_insertDB.mdo">
                                <input type="hidden" name="board_qna_type" value="${vo_question.board_qna_type}">
                                <input type="hidden" name="board_qna_group" value="${vo_question.board_qna_group}">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <tr>
										<th width="15%">문의 종류</th><td width="35%"><c:out value="${vo_question.board_qna_type}"/></td>
										<th width="15%">작성자</th><td width="35%">bucketkurly</td>
									</tr>
									<tr>
										<th>제목</th><td><input type="text" name="board_qna_title" placeholder="안녕하세요, 고객님 답변드립니다." style="width:300px;"/></td>
										<th>날짜</th><td><%= sf.format(nowTime) %></td>
									</tr>
									<tr>
										<th>내용</th><td colspan="3"><textarea class="form-control" rows="40" id="board_qna_content" name="board_qna_content"></textarea></td>
									</tr>									
                                </table>
                             </form>               
                        </div>
                        <div class="card-footer">
                        	<div id="buttondiv">
                               	<a href="javascript:document.getElementById('form').submit();" id="insertbtn" class="btn btn-primary btn-icon-split" >
									<span class="icon text-white-50">
										<i class="fas fa-check"></i>
									</span>
									<span class="text">답변 등록</span>
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
    <script>
	   	// <br>로 치환해서 넣기
	    $("#insertbtn").on("click", function(){
	  		var str1 = document.getElementById("board_qna_content").value;
	  		str1 = str1.replace(/(?:\r\n|\r|\n)/g, '<br/>');
			document.getElementById("board_qna_content").value = str1;
	    });
    </script>
    
   
</body>

</html>