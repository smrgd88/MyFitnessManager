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

<script src="/board/resources/vendor/jquery/jquery.min.js"></script>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">


				<h1 class="text-center my-4"><a href="${contextPath}/boards/list2">Free Board</a></h1>

				<div class="panel panel-default">
					<div class="panel-heading">
					 <b id="count"></b>
						<button id='regBtn' type="button" class="btn btn-success btn-sm pull-right">글쓰기</button>

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
							<tbody class="tbody"><!-- 게시글 tbody -->
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
		
		
		
		<div class="row">
		<!-- paging and searching -->
		
		<div class="col-lg-12">
				<form id='searchForm' action="${contextPath}/boards/list2" method='get'>
					<select name='type'>
						<option value="">--</option>
						<option value="T">제목</option>
						<option value="C">내용</option>
						<option value="W">작성자</option>
						<option value="TC">제목 or 내용</option>
						<option value="TW">제목 or 작성자</option>
						<option value="TCW">제목  or 내용 or 작성자</option>
					</select>
					<input type='text' name='keyword' id='keyword'>
					<button class='btn btn-default'>Search</button>
					<div id='results'></div>
					
				</form>
		</div>
		
			<!-- paging -->
			<div class="col-md-12">
				<div class="pagination">
					
				</div>
			</div>
		</div>
		<!-- paging end -->
		
	</div>
	<!-- container end -->



	<script type="text/javascript">
		var searchForm = $("#searchForm");
		var boardUL = $(".tbody");
		var count = $("#count");
		var type = "";
		var keyword = "";
		
		$(document).ready(function() {
				search();
				showList(1);
				
				function showList(page) {
					getList(
							{page: page||1, type:type,keyword:keyword},
							function(cnt, list) {	
								
								if(cnt==0){
									alert("검색결과가 없습니다");
									return;
								}
								if(page==-1){
									pageNum = Math.ceil(cnt/5.0);
									showList(pageNum);
									return;
								}
								
								var str = "";
								if(list==null || list.length==0){
									return;
								}
								
								for (var i = 0, len = list.length||0; i<len; i++) {
									str+="<tr>";
									str+="<td>"+list[i].bno+"</td>";
									str+="<td><a class='move' href='get?bno="+list[i].bno+"&type="+type+"&keyword="+keyword+"&pageNum="+pageNum+"'>"+list[i].title+"</td>";
									str+="<td>"+list[i].writer+"</td>";
									str+="<td>"+displayTime(list[i].regdate)+"</td>";
									str+="<td>"+list[i].readCount+"</td>";
									str+="</tr>";
								}
								boardUL.html(str);
								count.html("count: "+cnt);
								showPage(cnt);

							});
				};
				
				$("#regBtn").on("click", function() {

					self.location = "${contextPath}/boards/register";

				});
				
				$("#searchForm button").on("click",function(e) {
					
					if (!searchForm.find("option:selected").val()) {
						alert("검색종류를 선택하세요");
						return false;
					}

					if (!searchForm.find(
							"input[name='keyword']").val()) {
						alert("키워드를 입력하세요");
						return false;
					}
					type = searchForm.find("option:selected").val();
					keyword = searchForm.find("input[name='keyword']").val();
					e.preventDefault();
					pageNum=1;
					showList(1);

				});
				

				
				$(".paginate_button a").on("click", function(e) {
					e.preventDefault();
					console.log('click');
					var targetPage = $(this).attr("href");
					pageNum = targetPage;
					showList(pageNum);
				});
				
				
				
				function getList(param, callback, error) {
					
				    var page = param.page||1;
				    var type = param.type;
				    var keyword = param.keyword;
				    
				    $.getJSON("${contextPath}/boards/list2/" + page +".json"+"?type="+type+"&keyword="+keyword,
				        function(data) {
				          if (callback) {
				         	callback(data.cnt, data.list); // 댓글 목록만 가져오는 경우 
				          }
				        }).fail(function(xhr, status, err) {
				      if (error) {
				        error();
				      }
				    });
				  };
				
				var pageNum = 1 ;
				var pageFooter = $(".pagination");
				
				function showPage(cnt){
					console.log(pageNum);
					
					var endNum = Math.ceil(pageNum/5.0)*5;
					var startNum = endNum-4;
					
					var prev = (startNum!=1);
					var next = false;
					
					if(endNum*5 >= cnt){
						endNum = Math.ceil(cnt/5.0);
					}
					
					if(endNum*5< cnt){
						next = true;
					}
									
					var str = "<ul class='pagination pull-right'>";
					
					if(prev){
						str+="<li class='page-item'><a class='page-link' href='"+(startNum -1)+"'>Previous</a></li>";
					}
					
					for (var i = startNum; i <= endNum; i++) {
						
						var active=pageNum==i?"active":"";
						
						str+="<li class='page-item "+active+"'><a class='page-link' href='"+i+"'>"+i+"</a></li>";
					}
					if(next){
						str+="<li class='page-item'><a class='page-link' href='"+(endNum +1)+"'>Next</a></li>";
					}
					
					str+="</ul>";
					
					pageFooter.html(str);
				}
				
				pageFooter.on("click","li a", function(e){
					e.preventDefault();
					var targetPageNum = $(this).attr("href");
					
					pageNum = targetPageNum;
					
					showList(pageNum);
				})
				
				
																				
				function displayTime(timeValue) {

					var today = new Date();
			
					var gap = today.getTime() - timeValue;
			
					var dateObj = new Date(timeValue);
					var str = "";
			
					if (gap < (1000 * 60 * 60 * 24)) {
			
						var hh = dateObj.getHours();
						var mi = dateObj.getMinutes();
						var ss = dateObj.getSeconds();
			
						return [ (hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi,
								':', (ss > 9 ? '' : '0') + ss ].join('');
			
					} else {
						var yy = dateObj.getFullYear();
						var mm = dateObj.getMonth() + 1; // getMonth() is zero-based
						var dd = dateObj.getDate();
			
						return [ yy, '/', (mm > 9 ? '' : '0') + mm, '/',
								(dd > 9 ? '' : '0') + dd ].join('');
					}
				}				
			});
		function search(){
			$("#keyword").keyup(function(){
				var type = searchForm.find("option:selected").val();
				var keyword = $("#keyword").val();
				if(keyword!=''&&type!=''){
					$.ajax({
						type:'POST',
						url:'searchWord',
						data:{keyword: keyword, type:type},
						dataType:'json',
						success: function(result){
							if(result.length>0){
							var str ="<b>연관 검색어</b><br/>";
								for (var i = 0; i < result.length; i++) {
									str +='<span>'+result[i].title+'</span><br/>';
								}
								$("#results").html(str);
							}else{ 
								$("#results").html("");
							}
						},
						error:function(e) {console.log('error:'+e.status);}
					});		
				}
				else{$("#results").html("");}
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
