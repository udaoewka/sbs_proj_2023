<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageTitle" value="${board.name} 리스트"/>
<%@include file="../common/head.jspf" %>

<section class="mt-5">
  <div class="container mx-auto px-3">
  	<div> 게시물 개수: ${articlesCount }</div>
    <div class="table-box-type-1">
      <table>
        <colgroup>	
          <col width="50"/>
          <col width="200"/>
          <col width="200"/>
          <col width="150"/>
          <col />
        </colgroup>
        <thead>
          <tr>
            <th>번호</th>
            <th>작성날짜</th>
            <th>수정날짜</th>
            <th>작성자</th>
            <th>제목</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="article" items="${articles}">
            <tr>
              <td>${article.id}</td>
              <td>${article.getRegDateForPrint()}</td>
              <td>${article.getUpdateDateForPrint()}</td>
              <td>${article.extra_writerName}</td>
              <td>
                <a href="../article/detail?id=${article.id}">${article.title}</a>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
    
    <div class="page-menu mt-5 flex justify-center">
	    <div class="btn-group">
	    	<c:set var="pageMenuArmLen" value="4"/>
	    	<c:set var="startPage" value="${page - pageMenuArmLen >= 1 ? page - pageMenuArmLen : 1 }"/>
	    	<c:set var="endPage" value="${page + pageMenuArmLen <= pagesCount ? page + pageMenuArmLen : pagesCount }"/>
	    	<c:if test="${startPage > 1 }">
	    		<a class="btn bnt-sm" href="?page=1">1</a>
	    		<a class="btn bnt-sm btn-disabled">...</a>
	    	</c:if>
			<c:forEach begin="${startPage }" end="${endPage }" var="i">
				<a class="btn bnt-sm ${page == i ? 'btn-active' : '' }" href="?page=${i }">${i }</a>
			</c:forEach>
			<c:if test="${endPage < pagesCount }">
				<a class="btn bnt-sm btn-disabled">...</a>
	    		<a class="btn bnt-sm" href="?page=${pagesCount }">${pagesCount }</a>
	    	</c:if>
		</div>
	</div>
  </div>
</section>

<%@include file="../common/foot.jspf" %>