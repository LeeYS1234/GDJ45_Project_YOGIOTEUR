<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Pacifico&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../resources/css/header.css">
</head>
<body>
	
	<div class="head1">
	
		<div class="title">
			<a href="http://localhost:9090/yogioteur/">Yogioteur</a>
		</div>
		 
		<div class="headerMain">
		
			<div class="header">
			
				<a href="${contextPath}/review/reviewList">REVIEW</a>
				<a href="${contextPath}/faq/faqList">FAQ</a>
				<!-- 로그인 이전 -->
				<c:if test="${loginMember eq null}">
					<a href ="${contextPath}/member/loginPage">LOGIN</a>
					<a href ="${contextPath}/member/agreePage">SIGN</a>	
				</c:if>
			
				<!-- 로그인 이후 -->
					<c:if test="${loginMember ne null}">
						${loginMember.memberName}님
						<c:choose>
							<c:when test="${loginMember.memberId eq 'admin12' }">
								<a href="${contextPath}/admin/adminPage">ADMIN PAGE</a>
							</c:when>
							<c:when test="${loginMember.memberId ne 'admin12' }">
								<a href ="${contextPath}/member/memberInfo">MY PAGE</a>		
							</c:when>
						</c:choose>
						<a href ="${contextPath}/member/logout">LOGOUT</a>
					</c:if>
				
			</div>
		</div>
	</div>	
		

</body>