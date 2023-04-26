<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageTitle" value="게시물 수정"/>
<%@include file="../common/head.jspf" %>

<section class="mt-5">
  <div class="container mx-auto px-3">
	<form class="table-box-type-1" method="POST" action="../article/doModify">
	  <input type="hidden" name="id" value="${article.id}"/>
	
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
            <td>${article.getRegDateForPrint()}</td>
          </tr>
          <tr>
            <th>수정날짜</th>
            <td>${article.getUpdateDateForPrint()}</td>
          </tr>
          <tr>
            <th>작성자</th>
            <td>${article.extra__writerName}</td>
          </tr>
          <tr>
            <th>조회수</th>
            <td>
            	<span class="badge badge-primary article-detail__hit-count">${article.hitCount}</span>
			</td>
          </tr>
          <tr>
            <th>추천수</th>
            <td>
            	<span class="badge badge-primary article-detail__hit-count">${article.extra__goodReactionPoint}</span>
			</td>
          </tr>
          <tr>
            <th>제목</th>
            <td>
              <input type="text" class="w-96 input input-bordered w-full max-w-xs" name="title" placeholder="제목" value="${article.title}"/>
            </td>
          </tr>
          <tr>
            <th>내용</th>
            <td>
              <textarea type="text" class="w-full textarea textarea-bordered" name="body" placeholder="내용" >${article.body}</textarea>
            </td>
          </tr>
        </tbody>
      </table>   
	
	  <div class="btns">
		<button class="btn btn-link" type="button" onclick="history.back();">뒤로가기</button>
		<button type="submit" class="btn btn-link" >수정</button>
	  </div>
	</form>
  </div>
</section>
<%@include file="../common/foot.jspf" %>