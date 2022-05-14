<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>수정완료페이지</title>
</head>
<body>
<script>

function button_event(){

if (confirm("정말 탈퇴하시겠습니까??") == true){    //확인
    document.form.submit();

}else{   //취소
    return;
}
}



</script>

<input type="button" value="회원탈퇴" onclick="button_event();">
</body>
</html>