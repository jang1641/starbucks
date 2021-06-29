$(document).ready(function(){	
	
		// ID 중복검사
	$("#idcheck").click(function(){
		if($("#id").val()==""){
			alert("ID를 입력하세요");
			$("#id").focus();
			return false;
		}else{
			
			var id = $("#id").val();	
			
			$.ajax({
				type:"post",
				url:"/starbucks_pyo011/Idcheck.do",
				data:{"id":id},
				datatype:"text",
				success:function(data){

					
					if(data==1){	// 중복 ID
						$("#myid").text("중복된 ID");
						$("#id").val("").focus();
					}else{			// 사용 가능한 ID
						$("#myid").text("사용 가능한 ID");
						$("#m_pw").focus();
					}					
				}
			});			
		}		
	});
	
	// 유효성 검사
	$("form").submit(function(){
		
		if($("#id").val() == ""){
			alert("ID를 입력하세요");
			$("#id").focus();
			return false;
		}		
		if($("#m_pw").val()==""){
			alert("비밀번호를 입력하세요");
			$("#m_pw").focus();
			return false;
		}
		if($("#m_pwdconfirm").val()==""){
			alert("비밀번호 확인을 입력하세요");
			$("#m_pwdconfirm").focus();
			return false;  
		}				
		if($("#m_nick").val()==""){
			alert("닉네임를 입력하세요");
			$("#m_nick").focus();
			return false;
		}
		if($("#m_name").val()==""){
			alert("이름을 입력하세요");
			$("#m_name").focus();
			return false;
		}
		
		if($("#m_birth2").val()==""){
			alert("월을 선택하세요");
			$("#m_birth2").focus();
			return false;
		}
		if($("#m_birth3").val()==""){
			alert("일을 선택하세요");
			$("#m_birth3").focus();
			return false;
		}
		if($("#m_phone1").val()==""){
			alert("핸드폰 첫 자리를 선택하세요");
			$("#m_phone1").focus();
			return false;
		}
		
		if($("#m_phone2").val()==""){
			alert("핸드폰 번호 중간자리를 입력하세요");
			$("#m_phone2").focus();
			return false;
		}
		
		if($("#m_phone3").val()==""){
			alert("핸드폰 번호 끝자리를 입력하세요");
			$("#m_phone3").focus();
			return false;
		}
		
		if($("#m_mail").val()==""){
			alert("이메일를 입력하세요");
			$("#m_mail").focus();
			return false;
		}
		if($("#m_post").val()==""){
			alert("주소를 선택하세요");
			$("#m_post").focus();
			return false;
		}

				
		
	}); // submit() end		
	
});  // ready() end