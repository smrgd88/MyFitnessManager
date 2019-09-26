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
function getLoc(){
	var x = event.offsetX;
	var y = event.offsetY;
	alert("현재좌표는 : "+x+" / "+y);
}
</script>
<body>
<input type = "checkbox" id = "menuicon">
<label for="menuicon">
	<span></span>
	<span></span>
	<span></span>
</label>

<map name="anatomy" id="Map">
	<area id="chest" shape="poly" coords="266,212,289,208,326,199,387,219,397,236,393,261,384,300,370,310,354,319,341,320,334,318,292,307,266,310,227,322,189,307,182,247,178,228,194,209,215,199" onclick="test()"> <!-- 가슴 -->
	<area id="shoulder" shape="poly" coords="182,183,160,193,146,214,138,244,139,269,146,278,156,277,182,246,181,228,193,209,218,196,211,189,171,176,171,176,184,181" onclick="test()"> <!-- 어깨 -->
	<area id="biceps" shape="poly" coords="395,261,406,271,425,300,432,300,437,275,449,311,451,355,429,396,414,392,399,372,389,317,384,289,384,271" onclick="test()"> <!-- 이두 -->
	<area id="triceps" shape="poly" coords="695,234,677,231,661,241,644,261,642,282,634,363,648,384,664,390,682,382,690,373,697,337,699,271" onclick="test()"> <!-- 삼두 -->
	<area id="abdominal" shape="poly" coords="283,311,229,321,199,336,193,348,203,399,199,470,229,494,353,485,378,462,369,411,374,373,384,355,374,332,292,310" onclick="test()"> <!-- 복근 -->
	<area id="leg" shape="poly" coords="221,508,200,534,183,572,180,621,210,791,224,808,245,807,277,780,286,737,294,610,270,563,242,524" onclick="test()"> <!-- 다리 -->
	<area id="back" shape="poly" coords="798,130,819,135,828,154,868,174,892,175,900,196,894,353,888,356,881,406,847,481,826,490,806,493,786,492,737,472,723,451,714,384,698,339,695,243,688,209,695,194,788,131,786,134" onclick="test()"> <!-- 등 -->
	

	
	<!-- <area shape="circle" coords="50,50,50,50" href="http://daum.net">
	<area shape="circle" coords="50,50,50,50" href="http://naver.com">
	<area shape="circle" coords="50,50,50,50" href="http://naver.com"> -->
</map>

<div class = "container">
	<div class = "row height">
		<div class = "col bg-danger">
			<img alt="anatomy" src="${contextPath}/resources/image/bodybuilding.jpg" usemap = "#anatomy">
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
<script>
function test(){
	alert("된다.");
}
</script>
</body>
</html>