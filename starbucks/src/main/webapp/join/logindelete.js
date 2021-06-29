$(document).ready(function(){
	$("form").submit(function(){

		if($.trim($("#m_pw").val())==""){
			alert("비밀번호를 입력하세요");
			$("#m_pw").focus();
			return false;
		}
		
	});
});