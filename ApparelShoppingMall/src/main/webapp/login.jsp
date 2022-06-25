<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
  <%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>


<h3>회원 로그인</h3>
<form action='login.do' method='post'>
	회원 아이디 또는 이메일 <input type='text' name=id><br>
	비밀번호             <input type='password' name=pw><br>
	<input type='button' value='닫기' onClick='self.close()'>
	<input type='submit' value='로그인'>
</form>

<c:if test="${ loginResult == -1 || loginResult == 0 }">
		<script>
			alert("아이디 혹은 비밀번호를 확인하세요.");
		</script>
	</c:if>

</body>
</html>