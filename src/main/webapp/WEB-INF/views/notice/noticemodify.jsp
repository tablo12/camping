<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<%@include file="../includes/header.jsp"%>
<br>
<br>
<br>
<!-- ======= My & Family Section ======= -->
<section id="about" class="about">
	<div class="container">
		<div class="section-title">
			<h2>My & Family</h2>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">공지 사항</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	
<form role="form" action="/notice/noticemodify" method="post">
	
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	
	<div class="form-group">
		<label>번호</label>
		<input class="form-control" name='board_no' value='<c:out value="${notice.board_no}"/>' readonly="readonly">
	</div>
	
	<div class="form-group">
		<label>제목</label>
		<input class="form-control" name='board_title' value='<c:out value="${notice.board_title }"/>'>
	</div>
	
	<div class="form-group">
		<label>내용</label>
		<textarea class="form-control" rows="20" name='board_content' ><c:out value="${notice.board_content}"/></textarea>
	</div>
	
	<div class="form-group">
		<label>작성자</label>
		<input class="form-control" name='mem_id' value='<c:out value="${notice.mem_id}"/>' readonly="readonly">
	</div>
	
	<div class="form-group">
		<label>작성일</label>
		<input class="form-control" name='board_date' value='<fmt:formatDate pattern="yyyy/MM/dd" value="${notice.board_date }"/>' readonly="readonly">
	</div>
	
	<div class="form-group">
		<label>수정일</label>
		<input class="form-control" name='board_updatedate' value='<fmt:formatDate pattern="yyyy/MM/dd" value="${notice.board_updatedate}"/>' readonly="readonly">
	</div>
	
	<sec:authentication property="principal" var="pinfo"/>
	
	<sec:authorize access="isAuthenticated()">
	
	<c:if test="${pinfo.username eq notice.mem_id }">
	
	<button type="submit" data-oper='noticemodify' class="btn btn-default">수정</button>
	<button type="submit" data-oper='noticeremove' class="btn btn-danger">삭제</button>
	</c:if>
	</sec:authorize>
	<button type="submit" data-oper='noticelist' class="btn btn-info">목록</button>

</form>


</section>

<%@include file="../includes/footer.jsp"%>

<script type="text/javascript">
$(document).ready(function() {
	
	var formObj = $("form");
	
	var csrfHeaderName ="${_csrf.headerName}"; // 시큐리티 접근제한 해제용 중요!!!!!!!!!!!!!!!!!!!!!!!!!
  	var csrfTokenValue="${_csrf.token}";	// 시큐리티 접근제한 해제용 중요!!!!!!!!!!!!!!!!!!!!!!!!!
	
	$('button').on("click", function(e){
	
		e.preventDefault();
		
		var operation = $(this).data("oper");
		
		console.log(operation);
		
		if(operation === 'noticeremove'){
			formObj.attr("action", "/notice/noticeremove");
		}else if(operation === 'noticelist'){
				
			formObj.attr("action", "/notice/noticelist").attr("method", "get");
			formObj.empty();
		}else if(operation === 'noticemodify') {
			
			console.log("submit clicked");
			
			formObj.attr("action", "/notice/noticelist").attr("method", "post");
		}
		formObj.submit();
		
		$.ajax({
			url: 'uploadAjaxAction',
			processData: false,
			contentType: false,
			beforeSend: function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			data:formData,
			type: 'POST',
			dataType:'json',
			success: function(result){
				console.log(result);
				showUploadResult(result);
			}
			
		});	
		
	});
})
</script>