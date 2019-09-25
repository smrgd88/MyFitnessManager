<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<head>
<meta charset="EUC-KR">
<!-- BootStrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
	<script src="/fitness/resources/js/jquery-3.4.1.min.js">
		
	</script>
<title>MFM</title>

<style>
/*  .row-height {
	height: 25vh;
}
*/


.height {
	min-height: 100vh;
}

#loading {
	width: 100%;
	height: 100%;
	top: 0px;
	left: 0px;
	position: fixed;
	display: block;
	opacity: 0.7;
	background-color: #fff;
	z-index: 99;
	text-align: center;
}

#loading-image {
	position: absolute;
	top: 50%;
	left: 50%;
}
</style>

<!-- 로딩창 -->

</head>

<body>

<div id="loading"><img id="loading-image" src="/fitness/resources/image/loading1.gif"></div>
<div class="bg-primary" id="home">
	<div class="container">
		<div class="row height align-items-center">
			<div class="col">
				<h1 class="text-light font-italic">
					M<small class="text-warning"> y</small>
				</h1>
				<h1 class="text-light font-italic">
					F<small class="text-warning"> itness</small>
				</h1>
				<h1 class="text-light font-italic">
					M<small class="text-warning"> anager</small>
				</h1>
				<!-- 여기에는 버튼 들어갈꺼임. -->
				
				
			</div>
		</div>
	</div>
</div>

<div class="bg-secondary" disabled="true">
	<div class="container" id="secpage">
		<div class="row height align-items-center">
			<div class="col">
				<h1 class="text-light font-italic">
					M<small class="text-warning"> y</small>
				</h1>
				<h1 class="text-light font-italic">
					F<small class="text-warning"> itness</small>
				</h1>
				<h1 class="text-light font-italic">
					M<small class="text-warning"> anager</small>
				</h1>
			</div>
		</div>
	</div>
</div>


	<!-- Navigation Bar -->
	<!-- JQuery first, then Popper.js , then Bootstrap JS-->

	<!--JS걸어주기-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous">
		
	</script>
	<!--JS걸어주기-->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous">
		
	</script>
<script>

$(window).on('load',function(e){
	console.log("test");
	$("#loading").hide();
})

</script>
</body>
</html>

