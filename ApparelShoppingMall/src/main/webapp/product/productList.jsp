<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="../menu.jsp"></jsp:include>
<c:choose>
<c:when test="${sessionScope.id == null }">
<c:redirect url="login.jsp"></c:redirect>
		</c:when>
		<c:otherwise>

			<a href="index.jsp">첫 페이지로</a>
			
			<h3>상품목록</h3>
			<table border="1">
				<thead>
					<tr>
						<th>상품코드</th>
						<th>상품이름</th>
						<th>가격</th>
						<th>상품설명</th>
						<th>이미지</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="item" items="${requestScope.productList }">
						<tr>
							<td>${item.pId }</td>
							<td>${item.pName }</td>
							<td>${item.pPrice }</td>
							<td>${item.pInfo }</td>
							<td>${item.pImage }</td>
							<td><a href="productUpdateForm.jsp">수정</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<a href="product/productInsertForm.jsp">제품 등록</a>
</c:otherwise>
</c:choose>
</body>
<script>

</script>
</html>