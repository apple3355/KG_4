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
			    	<h1 class="h3 mb-2 text-gray-800">상품 관리</h1>
					<p class="mb-4">버켓컬리 상품판매·후기를 관리하는 페이지입니다.</p>
                   
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header">
                            <h4 class="" style="color: #6406ca; font-weight: bolder; float: left; margin-top:10px;" >상품 판매 등록</h4>
                        </div>
                        <div class="card-body">
                        	<form role="form" id="form" action="${pageContext.request.contextPath}/admin_goods_insertsellDB.mdo">
                                <input type="hidden" value="10" name="goods_sell_stock_rea">
                                
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                	<tr>
										<th>카테고리</th>
										<td colspan="3">
											<div>
												<div style="float: left;">
													<span>상위 카테고리</span>
													<select name="goods_sell_parent_no" id="goods_sell_parent_no"  style="width: 200px;" class="form-control" >
														<option value="">선택</option>
														<c:forEach items="${admin_Category_parent}" var="cp">
															<option id="parent" value="${cp.category_parent_no }">${cp.category_parent_name }</option>
														</c:forEach>
													</select>
												</div>
												<div style="float: left;  margin-left:40px;">
													<span>중위 카테고리</span>
		                     					    <select name="goods_sell_sub_no" id="goods_sell_sub_no" style="width: 200px;" class="form-control">                      						    	
														<option value="">선택</option>
		                     						</select>
	                     						</div>
	                     						<div style="float: left;  margin-left:40px;">
		                     						<span>하위 카테고리</span>
		                     					    <select name="goods_sell_goods_no" id="goods_sell_goods_no" style="width: 200px;" class="form-control">
		                     							<option value="">선택</option>
		                     						</select>
	                    						</div>
	                     					</div>
										</td>
									</tr>	 								
									<tr>
										<th>입고날짜</th><td><input type="text" class="form-control" value="${vo.goods_sell_in_date}" name="goods_sell_in_date" id="goods_sell_in_date" placeholder="예)2020-01-01"></td>
										<th>입고수량</th><td><input type="text" class="form-control" value="${vo.goods_sell_in_ea}" name="goods_sell_in_ea" id="goods_sell_in_ea" placeholder="예)35"></td>
									</tr>
									<tr>
										<th>유통기한</th><td><input type="text" class="form-control" value="${vo.goods_sell_exp}" name="goods_sell_exp" id="goods_sell_exp" placeholder="예)2020-01-31" ></td>
										<th>판매가격</th><td><input type="text" class="form-control" value="${vo.goods_sell_price}" name="goods_sell_price" id="goods_sell_price" placeholder="예)10000"></td>
									</tr>
									<tr>
										<th>할인율</th><td><input type="text" class="form-control" value="${vo.goods_sell_discount}" name="goods_sell_discount" id="goods_sell_discount" placeholder="예)20" >%</td>
										<th>프로모션</th>
										<td>
											<select name="goods_sell_promotion" id="goods_sell_promotion" style="width: 200px;" class="form-control" >
											    <option value="">상태선택</option>
											    <option value="0">미적용</option>
											    <option value="1">적용</option>
											</select>
										</td>
									</tr>	
									<tr>
										<th>상태</th>
										<td colspan="3">
											<select name="goods_sell_status" id="goods_sell_status" style="width: 200px;" class="form-control" >
											    <option value="">상태선택</option>
											    <option value="1">판매중</option>
											    <option value="2">판매중지</option>
											    <option value="0">판매완료</option>
											</select>
										</td>
									</tr>
                                </table>
							</form>
                        </div>
                        <div class="card-footer">
                        	<div id="buttondiv">
								<a href="javascript:void(0);" id="fn_insert" class="btn btn-primary btn-icon-split" >
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
    <script>
 	//상품 등록 실행
 	$(document).ready(function(){
		//상품 판매 등록 유효성검사
		$("#fn_insert").click(function(){
			alert("상품을 등록하시겠습니까?");
			var in_date = $("#goods_sell_in_date").val();
			var in_ea = $("#goods_sell_in_ea").val();
			var exp = $("#goods_sell_exp").val();
			var price = $("#goods_sell_price").val();
			var discount = $("#goods_sell_discount").val();
			var promotion = $("#goods_sell_promotion").val();
			var status = $("#goods_sell_status").val();
			var goods = $("#goods_sell_goods_no").val();
			var sub = $("#goods_sell_sub_no").val();
			var parent = $("#goods_sell_parent_no").val();
			
			
			if (parent == ""){
				alert("상위 카테고리를 선택해주세요");
				parent.focus();
			} else if (sub == ""){
				alert("중위 카테고리를 선택해주세요");
				sub.focus();
			} else if (goods == ""){
				alert("하위 카테고리를 선택해주세요");
				goods.focus();
			} else if(in_date == ""){
				alert("입고 날짜를 입력해주세요");
				in_date.focus();
			} else if (in_ea == ""){
				alert("입고 수량을 입력해주세요");
				in_ea.focus();
			} else if (exp == ""){
				alert("유통기한을 입력해주세요");
				exp.focus();
			} else if (price == ""){
				alert("상품 가격을 입력해주세요");
				price.focus();
			} else if (discount == ""){
				alert("할인율을 입력해주세요");
				discount.focus();
			} else if (promotion == ""){
				alert("프로모션을 선택해주세요");
				promotion.focus();
			} else if (status == ""){
				alert("상품 상태를 선택해주세요");
				status.focus();
			}
			// 상품 판매 정보 전송
			alert("상품 정보 전송");
			$("#form").submit();
		});		
		
	});
    </script>
    
	<!--카테고리 서브 셀렉트 박스 -->
    <script>
    $(document).on("change","select[name='goods_sell_parent_no']",function(){
    	var parent_no = $("#goods_sell_parent_no option:selected").val();
    	
    	$.ajax({
    		url : "selectCategory_sub.mdo",
    		dataType: "json",
    		async:false,
    		type:"post",
    		data: {parent_no},
    		success:function(data){
    			$("#goods_sell_sub_no option").remove();
    			$("#goods_sell_goods_no option").remove();
    			$("select[name='goods_sell_goods_no']").append("<option value=''>선택</option>");
    			if(data.admin_Category_sub.length>0){
    				for(var i=0; i <data.admin_Category_sub.length; i++){
      	              var name = data.admin_Category_sub[i].category_sub_name;
      	              var value = data.admin_Category_sub[i].category_sub_no;
      	              $("#goods_sell_sub_no").append('<option value ='+value+'>'+name+'</option>');
      	           }
    			}else{
    				$("select[name='goods_sell_sub_no']").append("<option value=''>선택</option>");
    			}
    	        
    		}
    	});
    })
    </script>
    
    <!--카테고리 goods 셀렉트 박스 -->
    <script>
    $(document).on("change","select[name='goods_sell_sub_no']",function(){
    	var sub_no = $("#goods_sell_sub_no option:selected").val();
    	
    	$.ajax({
    		url : "selectCategory_goods.mdo",
    		dataType: "json",
    		async:false,
    		type:"post",
    		data: {sub_no},
    		success:function(data){
    			$("#goods_sell_goods_no option").remove();
    			if(data.admin_Category_goods.length>0){
    				for(var i=0; i <data.admin_Category_goods.length; i++){
      	              var name = data.admin_Category_goods[i].category_goods_name;
      	              var value = data.admin_Category_goods[i].category_goods_no;
      	              $("#goods_sell_goods_no").append('<option value ='+value+'>'+name+'</option>');
      	           }
    			}else{
    				$("select[name='goods_sell_goods_no']").append("<option value=''>품절</option>");
    			}
    	        
    		}
    	});
    })
    </script>
    <script>
    $("#submit").on("click", function checks(){ 
	var hobbyCheck = false; 
	var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/); 
	var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/); 
	var getName= RegExp(/^[가-힣]+$/); 
	var fmt = RegExp(/^\d{6}[1234]\d{6}$/); 
	var getPhone = RegExp(/^01\d\d{3,4}\d{4}$/); //형식 설정 
	//아이디 공백 확인 
	if($("#member_id").val() == ""){ 
		alert("아이디를 입력해주세요"); 
		$("#member_id").focus(); 
		return false; 
	} 
	
	//아이디 유효성검사 
	if(!getCheck.test($("#member_id").val())){ 
		alert("4자 이상 12자 이하 영문과 숫자로 입력해주세요"); 
		$("#member_id").val(""); 
		$("#member_id").focus(); 
		return false; 
	} 
	
	//비밀번호 공백 확인 
	if($("#member_pw").val() == ""){ 
		alert("패스워드를 입력해주세요"); 
		$("#member_pw").focus(); 
		return false; 
	} 
	
	//아이디 비밀번호 같음 확인 
	if($("#member_id").val() == $("#member_pw").val()){
	 	alert("아이디와 비밀번호가 일치합니다"); 
		$("#member_pw").val(""); 
		$("#member_pw").focus(); 
		return false; 
	} 
	
	//비밀번호 유효성검사 
	if(!getCheck.test($("#member_pw").val())){ 
		alert("4자 이상 12자 이하 영문과 숫자로 입력해주세요"); 
		$("#member_pw").val(""); 
		$("#member_pw").focus(); 
		return false; 
	} 
	
	//비밀번호 확인란 공백 확인 
	if($("#chk_member_pw").val() == ""){ 
		alert("패스워드 확인란을 입력해주세요"); 
		$("#chk_member_pw").focus(); 
		return false; 
	} 
	
	//비밀번호 서로확인 
	if($("#member_pw").val() != $("#chk_member_pw").val()){ 
		alert("동일한 비밀번호를 입력해주세요"); 
		$("#member_pw").val(""); 
		$("#chk_member_pw").val(""); 
		$("#member_pw").focus(); 
		return false; 
	} 
	
	//이름 공백 검사 
	if($("#member_name").val() == ""){ 
		alert("이름을 입력해주세요"); 
		$("#member_name").focus(); 
		return false; 
	} 
	
	//이메일 공백 확인 
	if($("#member_email").val() == ""){ 
		alert("이메일을 입력해주세요"); 
		$("#member_email").focus(); 
		return false; 
	} 
	//이메일 유효성 검사 
	if(!getMail.test($("#member_email").val())){ 
		alert("이메일형식에 맞게 입력해주세요") 
		$("#member_email").val(""); 
		$("#member_email").focus(); 
		return false; 
	} 
	
	//전화번호 공백 확인 
	if($("#member_phone").val() == ""){ 
		alert("전화번호를 입력해주세요"); 
		$("#member_phone").focus(); 
		return false; 
	} 
	
	//전화번호 유효성 검사
	if(!getPhone.test($("#member_phone").val())){ 
		alert("전화번호를 맞게 입력해주세요") 
		$("#member_phone").val(""); 
		$("#member_phone").focus(); 
		return false; 
	}
})
</script>

   
</body>

</html>