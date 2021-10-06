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

    <title>BucketKurly::Admin-Category</title>

	<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
    
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
			    	<h1 class="h3 mb-2 text-gray-800">카테고리 관리</h1>
					<p class="mb-4">버켓컬리 상품의 하위 카테고리를 관리하는 페이지입니다.</p>
                   
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                       	<div class="card-header">
	                        <h4 class="" style="color: #6406ca; font-weight: bolder; float: left; margin-top:10px;" >하위 카테고리 등록</h4>
	                    </div>
                        <div class="card-body">
                             <form role="form" id="form" method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/admin_category_goods_insertDB.mdo" >
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    	<tr>
											<th>카테고리</th>
											<td colspan="6">
												<select name="category_goods_parent_no" id="category_goods_parent_no"  style="width: 200px" >
													<option value="">선택</option>
													<c:forEach items="${admin_Category_parent}" var="cp">
														<option id="parent" value="${cp.category_parent_no}">${cp.category_parent_name}</option>
													</c:forEach>
												</select>
                      						    <select name="category_goods_sub_no" id="category_goods_sub_no" style="width: 200px;" >                      						    	
														<option value="" >선택</option>
                      						    </select>
											</td>
										</tr>									
										<tr>
											<th>상품명</th><td colspan="2"><input class="form-control" name ="category_goods_name" placeholder="예)친환경 감자"></td>
											<th>상품명 서브</th><td colspan="2"><input class="form-control" name ="category_goods_name_sub" placeholder="예)친환경 입니다."></td>
										</tr>
										<tr>
											<th width="16%">판매단위</th><td width="16%"><input class="form-control" name ="category_goods_unit" placeholder="예)1봉"></td>
											<th width="16%">상품용량(중량)</th><td width="16%"><input class="form-control" name ="category_goods_weight" placeholder="예)600g"></td>
											<th width="16%">원산지</th><td width="16%"><input class="form-control" name ="category_goods_from" placeholder="예)국내산 / 국산"></td>
										</tr>
										<tr>
											<th>포장타입</th>
											<td><select name="category_goods_packaging_type" style="text-align-last: center">
												    <option value="">포장타입</option>
												    <option value="상온">상온/종이포장</option>
												    <option value="냉장">냉장/종이포장</option>
												    <option value="냉동">냉동/종이포장</option>
												</select>
											</td>
											<th>배송구분</th><td><input class="form-control" name ="category_goods_delivery_type" value="샛별배송/택배배송"></td>
											<th>유통기한</th><td><input class="form-control" name ="category_goods_exp_date" ></td>
										</tr>
										<tr>
											<th>안내사항</th><td colspan="5"><textarea class="form-control" rows="5" id ="category_goods_info" name ="category_goods_info"></textarea></td>
										</tr>
										<tr>
											<th>참고사항</th><td colspan="5"><textarea class="form-control" rows="5" id ="category_goods_ref"  name ="category_goods_ref"></textarea></td>
										</tr>
										<tr>
											<th>본문 타이틀</th><td colspan="5"><input class="form-control" name =category_goods_contents_tit_main></td>
										</tr>
										<tr>
											<th>본문<br>서브타이틀</th><td colspan="5"><input class="form-control" name ="category_goods_contents_tit_sub"></td>
										</tr>
										<tr>
											<th>본문 설명</th><td colspan="5"><textarea class="form-control" rows="5" id ="category_goods_contents_intro" name ="category_goods_contents_intro"></textarea></td>
										</tr>
										
										<tr>
											<th>썸네일</th><td colspan="5"><input type="file" name="file"></td>
										</tr>
												
										<tr>
											<th>헤드 이미지</th><td colspan="5"><input type="file" name="file"></td>
										</tr>
										<tr>
											<th>본문 이미지</th><td colspan="5"><input type="file" name="file"></td>
										</tr>
										<tr>
											<th>정보 이미지</th><td colspan="5"><input type="file" name="file"></td>
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
    
    <!--카테고리 서브 셀렉트 박스 -->
    <script>
    $(document).on("change","select[name='category_goods_parent_no']",function(){
    	var parent_no = $("#category_goods_parent_no option:selected").val();
    	
    	$.ajax({
    		url : "selectCategory_sub.mdo",
    		dataType: "json",
    		async:false,
    		type:"post",
    		data: {parent_no},
    		success:function(data){
    			
    			$("#category_goods_sub_no option").remove();
    			$("select[name='category_goods_parent_no']").append("<option value=''>선택</option>");
    			if(data.admin_Category_sub.length>0){
    				for(var i=0; i <data.admin_Category_sub.length; i++){
      	              var name = data.admin_Category_sub[i].category_sub_name;
      	              var value = data.admin_Category_sub[i].category_sub_no;
      	              $("#category_goods_sub_no").append('<option value ='+value+'>'+name+'</option>');
      	           }
    			}else{
    				$("select[name='category_goods_sub_no']").append("<option value=''>선택</option>");
    			}
    	        
    		}
    	});
    })
  

	// <br>로 치환해서 넣기
      $("#insertbtn").on("click", function(){
    	 
    	var str1 = document.getElementById("category_goods_info").value;
    	str1 = str1.replace(/(?:\r\n|\r|\n)/g, '<br/>');
		document.getElementById("category_goods_info").value = str1;
		 
		var str2 = document.getElementById("category_goods_ref").value;
		str2 = str2.replace(/(?:\r\n|\r|\n)/g, '<br/>');
		document.getElementById("category_goods_ref").value = str2;
		
		var str3 = document.getElementById("category_goods_contents_intro").value;
		str3 = str3.replace(/(?:\r\n|\r|\n)/g, '<br/>');
		document.getElementById("category_goods_contents_intro").value = str3;
		
      });

    </script>

</body>

</html>