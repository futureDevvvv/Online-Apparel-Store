<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>

		<c:if test="${sessionScope.id == null }">
			<c:redirect url="login.jsp"></c:redirect>
		</c:if>
		
		
			<h3>${sessionScope.id }님, 환영합니다.</h3>
			

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>