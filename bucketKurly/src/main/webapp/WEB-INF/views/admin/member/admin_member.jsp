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
                            <h4 class="" style="color: #6406ca; font-weight: bolder; float: left; margin-top:10px;" >회원 목록</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0"  style="text-align:center;">
                                    <thead>
                                    	<tr>
											<th>번호</th>
											<th>회원번호</th>
											<th>아이디</th>   
											<th>이름</th>
											<th>휴대폰번호</th>
											<th>회원등급</th>
											<th>마지막로그인</th>
											<th>회원포인트</th>
											<th>누적금액</th>
											<th>계정상태</th>
											<th></th>
										</tr>
                                    </thead>
                                    <tbody>	
	                               		 <c:forEach items="${admin_member}" var="admin_member" varStatus="status">	
											<c:set var="member_status" value="${admin_member.member_status}" />
											<tr>
											 	<td>${status.count}</td>
												<td><c:out value="${admin_member.member_no}"/></td>
												<td><a href="javascript:void(0);" onClick="fn_member_details('${admin_member.member_id}')"><c:out value="${admin_member.member_id}"/></a></td>
												<td><c:out value="${admin_member.member_name}"/></td>
												<td><c:out value="${admin_member.member_phone}"/></td>
												<td><c:out value="${admin_member.member_rank}"/></td>
												<td><c:out value="${admin_member.member_last_login}"/></td>
												<td><c:out value="${admin_member.member_point}"/></td>
												<td><c:out value="${admin_member.member_total_cost}"/></td>
												<td><select class="form-control">
													    <option value="0"<c:if test="${member_status == 0}">selected</c:if>>탈퇴</option>
													    <option value="1"<c:if test="${member_status == 1}">selected</c:if>>활성화</option>
													    <option value="2"<c:if test="${member_status == 2}">selected</c:if>>휴면</option>
													</select>
	                                        	</td>  
												<td>
	                                        		<button type="button" class="btn btn-outline btn-info" id="saveBtn" onclick="fn_update(this)">수정</button>
	                                         	</td>
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
	function fn_update(row) {
		var result = confirm("회원 상태를 수정하시겠습니까?");
		if(result){ 
			var i = row.parentNode.parentNode.rowIndex;	//버튼이 눌러진 테이블의 로우넘버 저장
			var member_no = document.getElementById("dataTable").rows[i].cells[1].innerHTML;	//해당 로우넘버의 아이디가 있는 칼럼 값 저장
			
			//상태
			var selectbox = document.getElementById("dataTable").rows[i].cells[9].childNodes[0];
			var status = selectbox.options[selectbox.selectedIndex].value;
			
			var form = document.createElement("form");
			form.setAttribute("method", "Post");
			form.setAttribute("action", "${pageContext.request.contextPath}/updateMember_state.mdo");
			
			var member_idField = document.createElement("input");
			member_idField.setAttribute("type", "hidden");
			member_idField.setAttribute("name", "member_no");
			member_idField.setAttribute("value", member_no);
	
			var statusField = document.createElement("input");
			statusField.setAttribute("type", "hidden");
			statusField.setAttribute("name", "status");
			statusField.setAttribute("value", status);
			
			form.appendChild(member_idField);
			form.appendChild(statusField);
			
			document.body.appendChild(form);
			form.submit();
			alert('서브밋 됨');
	      }else{
		  	    location.href = "javascript:void(0);";
	      }
	}
	
	
	
    //회원 아이디 클릭
	function fn_member_details(member_id) {
		var url = "${pageContext.request.contextPath}/admin_member_no.mdo";
		url = url + "?member_id=" + member_id;
		location.href = url;	
    }
   	</script>
</body>

</html>