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

    <title>BucketKurly::Admin-Refund</title>

    <!-- Custom fonts for this template -->
    <link href="resources/bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/bootstrap/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="resources/bootstrap/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    
    <script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	
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
			    	<h1 class="h3 mb-2 text-gray-800">환불 관리</h1>
					<p class="mb-4">버켓컬리 환불을 관리하는 페이지입니다.</p>

                     <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header">
                            <h4 class="" style="color: #6406ca; font-weight: bolder; float: left; margin-top:10px;" >환불 목록</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" name="dataTable" width="100%" cellspacing="0" style="text-align:center;">
                                    <thead>
                                        <tr>  
                                            <th width="10%">번호</th>
                                            <th width="25%">주문번호</th>
                                            <th width="15%">회원아이디</th>
                                            <th width="15%">환불 금액</th>
                                            <th width="15%">환불 상태</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                   		<c:forEach items="${selectRefund}" var="selectRefund" varStatus="tablerow">
                                   		<c:set var="state" value="${selectRefund.refund_state}" />
	                                        <tr>
	                                            <td>${tablerow.count}</td>
	                                        	<td><c:out value="${selectRefund.refund_order_no}"/></td>
	                                        	<td><c:out value="${selectRefund.refund_member_id}"/></td>
	                                        	<td><c:out value="${selectRefund.refund_price}"/></td>
	                                        	<td>
	                                        		<c:if test="${state == 0}">환불 대기</c:if>
													<c:if test="${state == 1}">환불 완료</c:if>
	                                        	</td>                                        	
	                                        	<td>
	                                        		<c:if test="${state == 0}">
	                                        			<a onclick = "fn_update('${selectRefund.refund_no}','${selectRefund.refund_merchant_no},${selectRefund.refund_order_no}')">
	                                        				<button type="button" class="btn btn-outline btn-info" id="saveBtn">환불하기</button>
	                                        			</a>
	                                         		</c:if>
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
		function fn_update(refund_no,refund_merchant_no,refund_order_no) {
			var result = confirm("해당 결제건을 환불 하시겠습니까? ");
			if(result){ 

				var form = document.createElement("form");
				form.setAttribute("method", "Post");
				form.setAttribute("action", "${pageContext.request.contextPath}/admin_refund_import.mdo");
				
				var refund_merchant_noField = document.createElement("input");
				refund_merchant_noField.setAttribute("type", "hidden");
				refund_merchant_noField.setAttribute("name", "refund_merchant_no");
				refund_merchant_noField.setAttribute("value", refund_merchant_no);
				
				var refund_noField = document.createElement("input");
				refund_noField.setAttribute("type", "hidden");
				refund_noField.setAttribute("name", "refund_no");
				refund_noField.setAttribute("value", refund_no);
				
				var refund_order_noField = document.createElement("input");
				refund_order_noField.setAttribute("type", "hidden");
				refund_order_noField.setAttribute("name", "refund_order_no");
				refund_order_noField.setAttribute("value", refund_order_no);
			
				form.appendChild(refund_merchant_noField);
				form.appendChild(refund_noField);
				form.appendChild(refund_order_noField);
				
				document.body.appendChild(form);
				form.submit();
			
		      }else{
			  	    location.href = "javascript:void(0);";
		      }
		}
	</script>
	
</body>

</html>