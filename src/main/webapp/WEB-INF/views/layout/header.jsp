<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
		margin: 0;
		font-family: 'Kdam Thmor Pro', sans-serif;
	}
	
	a{
		text-decoration: none;
		color: white;
	}
	
	.head{
		display: flex;
		justify-content: space-between;
		align-items: center;
		background-color: silver;
		padding: 8px 12px;
	}
	
	section{
		a
	}
	
	.header a{
		padding: 12px;
		display: inline-block;
		font-size: 18px;
	}
	
	.header a:hover {
		
		color: #999;
		
	}
	
		
	.title a{
		font-size: 22px;
	}
	
	.header2 a{
		padding: 12px;
		display: inline-block;
		font-size: 18px;
	}
	
	.header2 a:hover {
		
		color: #999;
		
	}
</style>
</head>
<body>

	<div class="head">
	
		<div class="header">
				<a href="${contextPath}/review/reviewPage">REVIEW</a>
				<a href="${contextPath}/faq/faqPage">FAQ</a>
		</div>
		
		<div class="title">
			<a href="http://localhost:9090/yogioteur/">YOGIOTEUR</a>
		</div>
		 
		<div class="header2">
			<!-- 로그인 이전 -->
			<c:if test="${loginMember eq null and nonMember eq null}">
				<a href ="${contextPath}/member/loginPage">로그인</a>
				<a href ="${contextPath}/member/agreePage">회원가입</a>	
			</c:if>
		
			<!-- 로그인 이후 -->
			<c:if test="${loginMember ne null}">
				 ${loginMember.memberName}님 
				<a href ="${contextPath}/member/logout">로그아웃</a>
				<a href ="${contextPath}/member/memberPage">마이페이지</a>		
			</c:if>
			
			<c:if test="${nonMember ne null}">
				${nonMember.nonId}
				<a href ="${contextPath}/member/logout">로그아웃</a>
			</c:if>
			
			<c:if test="${loginMember ne null and loginMember.memberId eq 'admin12'}">
				<a href="${contextPath}/admin/adminPage">관리자페이지</a>
			</c:if>
		</div>
		
	</div>

</body>