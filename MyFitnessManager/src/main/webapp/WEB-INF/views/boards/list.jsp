<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<%@ page session="false"%>
<html>
<head>
<title>Free Board</title>


<!-- Bootstrap Core CSS -->
<link href="/board/resources/vendor/bootstrap/css/bootstrap.min.css?1"
	rel="stylesheet">


<!-- Custom Fonts -->
<link
	href="/board/resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous">
		
	</script>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12">


				<h1 class="text-center my-4">Free Board</h1>

				<div class="panel panel-default">
					<div class="panel-heading">
						count

						<button type="button" class="btn btn-success btn-sm pull-right">글쓰기</button>

					</div>

					<div class="panel-body">

						<table class="table mt-4">
							<thead>
								<tr class="table-danger">
									<td width="10%">글번호</td>
									<td width="*">제목</td>
									<td width="10%">닉네임</td>
									<td width="15%">작성일</td>
									<td width="10%">조회수</td>
								</tr>
							</thead>

							<tbody>
							<div class="UL"></div>
								<c:forEach var="list" items="${list}" varStatus="status">
									<tr>
										<td>
											<%-- ${list.bno } --%>${(total-(pageMaker.cri.pageNum-1)*pageMaker.cri.amount) - status.index}</td>
										<td>
											<%-- <a
									href='${contextPath }/board/get?bno=<c:out value="${dto.bno}"/>'>${dto.title }</a> --%>
											<a class='move' href='<c:out value="${list.bno}"/>'><c:out
													value="${list.title }" /><b>[<c:out
														value="${list.replyCnt}" />]
											</b></a>
										</td>
										<td>${list.writer }</td>
										<td><fmt:formatDate pattern="yyyy/MM/dd"
												value="${list.regdate}" /></td>
										<td>${list.readCount }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<!--panel-body end  -->
				</div>
				<!--panel end  -->
			</div>
			<!-- col end -->
		</div>
		<!-- row end -->

		<!-- paging -->
		<div class="row">
			<div class="col-md-12">

				<div class="pull-right">
					<ul class="pagination">
						<c:if test="${pageMaker.prev }">
							<li class="paginate_button previous"><a
								href="${pageMaker.startPage-1}">Previous</a></li>
						</c:if>
						<c:forEach var="num" begin="${pageMaker.startPage }"
							end="${pageMaker.endPage }">
							<li class="paginate_button"><a href="${num}">${num }</a></li>
						</c:forEach>
						<c:if test="${pageMaker.next }">
							<li class="paginate_button next"><a
								href="${pageMaker.endPage+1}">Next</a></li>
						</c:if>

					</ul>
				</div>

			</div>
		</div>
		<!-- paging end -->

		<form id='actionForm' action="${contextPath }/boards/list2" method='get'>
			<input type='hidden' name='pageNum' value="${pageMaker.cri.pageNum }">
			<input type='hidden' name='amount' value="${pageMaker.cri.amount }">
			<%-- <input type='hidden' name='type' value='<c:out value="${pageMaker.cri.type }"/>'>
			<input type='hidden' name='keyword' value='<c:out value="${pageMaker.cri.keyword }"/>'> --%>
		</form>

	</div>
	<!-- container end -->



	<script type="text/javascript">
	
	var actionForm = $("#actionForm");
	var UL = $(".UL");

		$(document).ready(function() {
							$(".paginate_button a").on("click",function(e){
										e.preventDefault();
										console.log('click');
										actionForm.find("input[name='pageNum']").val($(this).attr("href"));
										actionForm.submit();
									});
						});
		
		function getList(param, callback, error) {

		    var bno = param.bno;
		    var page = param.page || 1;
		    
		    $.getJSON("/board/boards/list2" + bno + "/" + page + ".json",
		        function(data) {
		          if (callback) {
		          //  callback(data); // 댓글 목록만 가져오는 경우 
		            callback(data.replyCnt, data.list); //댓글 숫자와 목록을 가져오는 경우 
		          }
		        }).fail(function(xhr, status, err) {
		      if (error) {
		        error();
		      }
		    });
		  }
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


</body>

</html>
