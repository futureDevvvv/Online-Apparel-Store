<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//cdn.ckeditor.com/4.17.1/standard/ckeditor.js"></script>
</head>
<body>
<jsp:include page="../menu.jsp"></jsp:include>
<c:choose>
<c:when test="${sessionScope.id == null }">
<c:redirect url="login.jsp"></c:redirect>
		</c:when>
		<c:otherwise>
		
		<form action='productUpdate.do' name="updateProduct" enctype="multipart/form-data" method='post'>
		상품 코드
		상품 이름
		상품 설명
		상품 가격
		사진
		
		</form>
		
		</c:otherwise>
</c:choose>
</body>
</html>