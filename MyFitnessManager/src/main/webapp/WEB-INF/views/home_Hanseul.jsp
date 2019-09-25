<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<c:set var = "contextPath" value ="${pageContext.request.contextPath }"/>
<head>
<meta charset="EUC-KR">
<!-- BootStrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>My Fitness Manager</title>
</head>
<style>
	input[id="menuicon"]{
		display:none;
	}
	input[id="menuicon"] + label{
		display:block;
		width:60px;
		height:40px;
		position:relative; /* absolute의 기준점 */
		cursor:pointer; /* 마우스 커서를 포인터로 바꿈 */
	}
	input[id="menuicon"] + label span{
		dispaly:block;
		position : absolute;
		width: 100%;
		height: 5px;
		border-radius: 30px;
		background: #000;
		transition : all 1s;
	}
	input[id="menuicon"] + label span:ntn-child(1){
		top:0;
	}
	input[id="menuicon"] + label span:ntn-child(2){
		top:50%;
		transform:translateY(-50%);
	}
	input[id="menuicon"] + label span:ntn-child(3){
		bottom: 0;
	}	
	input[id="menuicon"]:checked + label span:nth-child(1){
		top:50%;
		transform:translateY(-50%) rotate(45deg);
	}
	input[id="menuicon"]:checked + label span:nth-child(2){
		opacity:0;
	}
	input[id="menuicon"]:checked + label span:nth-child(3){
		bottom:50%;
		transform:translateY(50%) rotate(-45deg);
	}
	
	.area{
		width: 500px;
		height: 500px;
		transition : all 1s;
	}
	.height{
		height:80vh;
	}
	
	
</style>
<script type="text/javascript">
</script>
<body>
<input type = "checkbox" id = "menuicon">
<label for="menuicon">
	<span></span>
	<span></span>
	<span></span>
</label>

<div class = "container">
	<div class = "row height">
		<div class = "col bg-danger">
			<img alt="anatomy" src="./image/anatomy.jpg">	
		</div>
		<div class = "col bg-primary">
		col bg-primary
		</div>
		<div class = "col bg-warning">
		col bg-warning
		</div>
	</div>
</div>

 <!-- first Popper.js, then Bootstrap JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>