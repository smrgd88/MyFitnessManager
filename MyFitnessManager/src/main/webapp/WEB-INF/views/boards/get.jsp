<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<!-- Bootstrap Core CSS -->
<link href="/board/resources/vendor/bootstrap/css/bootstrap.min.css?1"
	rel="stylesheet">


<!-- Custom Fonts -->
<link
	href="/board/resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<script src="/board/resources/vendor/jquery/jquery.min.js"></script>

<div class="container">

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">글읽기</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">

			<div class="panel-heading"></div>
			
			<!-- /.panel-heading -->
			<div class="panel-body">
					<div class="form-group">
						<label>Bno</label> <input class="form-control" name='bno'
							value="${board.bno}" readonly="readonly">
					</div>

					<div class="form-group">
						<label>Title</label> <input class="form-control" name='title'
							value="${board.title}" readonly="readonly">
					</div>


					<div class="form-group">
						<label>Text area</label>
						<textarea class="form-control" rows="3" name='content'
							readonly="readonly">${board.content }</textarea>
					</div>

					<div class="form-group">
						<label>Writer</label> <input class="form-control" name='writer'
							value="${board.writer}" readonly="readonly">
					</div>

					<button data-oper='modify' class="btn btn-default">Modify</button>
					<button data-oper='list' class="btn btn-info">List</button>

				<form id="operForm" action="${contextPath}/boards/modify"
					method="get">
					<input type="hidden" class="form-control" name='pageNum'
							value="${cri.pageNum}">
					<input type="hidden" class="form-control" name='amount'
							value="${cri.amount}">
					<input type='hidden' name='type' value='<c:out value="${cri.type }"/>'>
					<input type='hidden' name='keyword'	value='<c:out value="${cri.keyword }"/>'>
					<input type="hidden" class="form-control" name='bno' id="bno"
							value="${board.bno}">
				</form>
			</div>
			<!--  end panel-body -->

		</div>
		<!--  end panel-body -->
		
	</div>
	<!-- end panel -->
</div>
<!-- /.row -->

</div>

<script>
	$(document).ready(function() {
			
		var operForm = $("#operForm");
		
		$("button[data-oper='modify']").on("click", function(e) {
			operForm.attr("action", "/board/boards/modify").submit();
		});
		$("button[data-oper='list']").on("click", function(e) {
			operForm.attr("action", "/board/boards/list2").submit();
		});
	});
</script>


	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous">
		
	</script>

	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous">
		
	</script>
