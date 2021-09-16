  function checks(){ 
	var hobbyCheck = false; 
	var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/); 
	var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/);
	var fmt = RegExp(/^\d{6}[1234]\d{6}$/); //형식 설정 
	var getPhone = RegExp(/^01\d\d{3,4}\d{4}$/);
	
	//아이디 공백 확인 
	if($("#member_id").val() == ""){ 
		alert("아이디 입력바람"); 
		$("#member_id").focus(); 
		return false; 
	} 
	
	//아이디 유효성검사 
	if(!getCheck.test($("#member_id").val())){ 
		alert("형식에 맞게 입력해주세요"); 
		$("#member_id").val(""); 
		$("#member_id").focus(); 
		return false; 
	} 
	
	//비밀번호 공백 확인 
	if($("#member_pw").val() == ""){ 
		alert("패스워드 입력바람"); 
		$("#member_pw").focus(); 
		return false; 
	} 
	
	//아이디 비밀번호 같음 확인 
	if($("#member_id").val() == $("#member_pw").val()){
	 	alert("아이디와 비밀번호가 같습니다"); 
		$("#member_pw").val(""); 
		$("#member_pw").focus(); 
		return false; 
	} 
	
	//비밀번호 유효성검사 
	if(!getCheck.test($("#member_pw").val())){ 
		alert("형식에 맞게 입력해주세요"); 
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
		alert("비밀번호가 상이합니다"); 
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
	
	//전화번호 버튼 활성화
	$("#member_phone").on("propertychange change keyup paste input", function() {
		var getPhone = RegExp(/^01\d\d{4}\d{4}$/); //형식 설정
		if(getPhone.test($("#member_phone").val())){  
			$("#btn_cert").css({'border': '1px solid #5f0080', 'background-color': '#fff', 'color': '#5f0080', 'font-weight': '700'}); 
		}
		
		if(!getPhone.test($("#member_phone").val())){  
			$("#btn_cert").css({'border': '1px solid #ddd', 'background-color': '#fff', 'color': '#ddd'}); 
		}
 	});
	
	
	
} 

