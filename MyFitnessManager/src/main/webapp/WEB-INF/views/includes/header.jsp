<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<c:set var = "contextPath" value ="${pageContext.request.contextPath }"/> 
<head>
<meta charset="EUC-KR">
<!-- BootStrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>BoardList</title>
<style>
	.height{
		height: 25vh;
	}
	header{
		font-weight: 800;
	}
	section{
		padding-top: 30px;
		padding-bottom: 30px;
	}
</style>
</head>
<body>
<!-- Header -->
<header id="headeer" class = "bg-primary">
	<div class = "container">
		<div class = "row height align-items-center">
			<div class = "col">
				<h1 class ="text-light font-italic">MyBOARD</h1>
				<small class = "text-warning text-uppercase">ajax을 활용한 페이징 처리</small>
			</div>
		</div>
	</div>

</header>

<!-- Navigation Bar -->
<nav class = "navbar navbar-expand-md bg-light navbar-light p-3">
	<!-- 웹사이트 제목 -->
	<a class = "navbar-brand" href = "#">MyBoard</a>
	
	<!-- Toggler/collapse Button -->
	<button class = "navbar-toggler" data-toggle="collapse" data-target="#collapsibleNavbar">
		<span class = "navbar-toggler-icon"></span>
	</button>
	
	<!-- toggler/collapsible 대상 -->
	<div class = "collapse navbar-collapse" id = "collapsibleNavbar">
		<!-- 리스트 -->
		<ul class = "navbar-nav">
			<li class = "nav-item">
				<a class = "nav-link" href = "${contextPath}/board/register">Register</a>
			</li>
			<li class = "nav-item">
				<a class = "nav-link" href = "${contextPath}/board/list">BoardList</a>
			</li>
		
		
		
		<!-- 드롭다운 메뉴, 회원가입/로그인 -->
			<li class = "nav-item dropdown">
				<a class = "nav-link dropdown-toggle" href="#" data-toggle = "dropdown">
					Join-Us
				</a>
				<div class = "dropdown-menu">
					<a class = "dropdown-item" href="#">Sign-Up</a>
					<a class = "dropdown-item" href="#">Log-In</a>
				</div>
			</li>
		</ul>
		
		<!-- 검색 -->
		<form class = "form-inline ml-auto" action="#">
			<input class = "form-control mr-sm-2" type ="text" placeholder="검색어를 입력하세요.">
			<button class = "btn btn-warning" type = "submit">Search</button>
		</form>
		
	</div>
	
</nav>

