<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageTitle" value="게시물 내용"/>
<%@include file="../common/head.jspf" %>

<fmt:formatDate var="regDate" pattern="YYYY-MM월dd일" value="${article.regDate}"/>
<fmt:formatDate var="updateDate" pattern="YYYY-MM월dd일" value="${article.updateDate}"/>

<section class="mt-5">
	<div class="container mx-auto px-3">
		<form class="table-box-type-1" action="../article/doModify">
		<input type="hidden" name="id" value="${article.id}" />
			<table>
			<colgroup>
	        	<col width="200"/>
	        </colgroup>
		        <tbody>
		          <tr>
		            <th>번호</th>
		            <td>${article.id}</td>
		          </tr>
		          <tr>
		            <th>작성날짜</th>
		            <td>${regDate}</td>
		          </tr>
		          <tr>
		            <th>수정날짜</th>
		            <td>${updateDate}</td>
		          </tr>
		          <tr>
		            <th>작성자</th>
		            <td>${article.memberId}</td>
		          </tr>
		          <tr>
		            <th>제목</th>
		            <td>
						<input type="text" class="w-96" name="tile" placeholder="제목" value="${article.title}" />
		            </td>
		          </tr>
		          <tr>
		            <th>내용</th>
		            <td>
		            	<input type="text" class="w-96" name="tile" placeholder="제목" value="${article.body}" />
		            </td>
		          </tr>
		        </tbody>
			</table>
		
			<div class="btns">
				<button class="btn-text-link" type="button" onclick="history.back();">뒤로가기</button>
				<input type="submit" class="btn-text-link" value="수정" />
			</div>
		</form>
    </div>
</section>
<%@include file="../common/foot.jspf" %>