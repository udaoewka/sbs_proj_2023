<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageTitle" value="게시물 상세" />
<%@ include file="../common/head.jspf" %>

	<fmt:formatDate var="regDate" pattern="yyyy-MM월dd일" value="${article.regDate }" />
	<fmt:formatDate var="updateDate" pattern="yyyy-MM월dd일" value="${article.updateDate }" />
	<!-- <div>${article.id }</div>
	<div>${regDate }</div>
	<div>${updateDate }</div>
	<div>${article.memberId }</div>
	<div>${article.title }</div>
	 -->
	
	<section class="mt-5">
		<table>
			<tbody>
				<tr>
					<th>번호</th>
					<td>${article.id }</td>
				</tr>
				<tr>
					<th>작성날짜</th>
					<td>${regDate }</td>
				</tr>
				<tr>
					<th>수정날짜</th>
					<td>${updateDate }</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${article.memberId }</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>${article.title }</td>
				</tr>
			</tbody>
		</table>
	</section>

<%@ include file="../common/foot.jspf" %>