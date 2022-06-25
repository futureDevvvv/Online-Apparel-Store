<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//cdn.ckeditor.com/4.17.1/standard/ckeditor.js"></script>
<script>
	document.addEventListener('DOMContentLoaded', function(){
		CKEDITOR.replace('p_info', {
			filebrowserUploadUrl: '../productPut.do'
		});
	})
	</script>
</head>
<body>
<jsp:include page="../menu.jsp"></jsp:include>
<c:choose>
<c:when test="${sessionScope.id == null }">
<c:redirect url="login.jsp"></c:redirect>
		</c:when>
		<c:otherwise>
		
		<fieldset>
		<form action='productInsert.do' name="insertProduct" enctype="multipart/form-data" method='post'>
		상품 코드: <input type="text" name="p_id"><br>
		상품 이름: <input type="text" name="p_name"><br>
		상품 가격: <input type="number" name="p_price"><br>
		상품 설명: <textarea name="p_info" col="20" rows="3"></textarea><br>
		사진: <input type="file" name="p_image"><br>
		<input type="submit" value="등록"><input type="reset" value="취소">
		
		</form>
		</fieldset>
		
		</c:otherwise>
</c:choose>
</body>
</html>