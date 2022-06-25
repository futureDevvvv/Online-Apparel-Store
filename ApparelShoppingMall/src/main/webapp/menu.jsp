<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	ul{
		list-style-type: none;
	}
	
	li{
		display: inline-block;
		width: 100px;
		background-color: yellow;
	}
</style>
<body>
	<ul>
	<li><a href='<%=request.getContextPath()%>/BoardMain.do'>board</a></li>
		<li><a href='<%=request.getContextPath()%>/productList.do'>제품목록</a></li>
		<li><a href='<%=request.getContextPath()%>/CustomerInsert.do'>회원가입</a>
		
		<c:if test="${sessionScope.id != null }">
				<li><a href="${pageContext.request.contextPath }/CustomerUpdate.do">마이페이지</a></li>
				<li><a href="${pageContext.request.contextPath }/logout.do">로그아웃</a></li>
		</c:if>
	</ul>
</body>
</html>