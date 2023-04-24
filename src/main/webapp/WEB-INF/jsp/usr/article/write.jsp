<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageTitle" value="게시물 작성"/>
<%@include file="../common/head.jspf" %>

<section class="mt-5">
  <div class="container mx-auto px-3">
	<form class="table-box-type-1" method="POST" action="../article/doWrite">
	  <input type="hidden" name="id" value="${article.id}"/>
	
      <table>
      <colgroup>
        <col width="200"/>
      </colgroup>
        <tbody>
          <tr>
            <th>게시판</th>
            <td>
            	<!-- <label>
            		공지
            		<input type="radio" name="boardId" value="1" />
            	</label>
            	<label>
            		자유
            		<input type="radio" name="boardId" value="2" />
            	</label> -->
            	<select name="boardId" class="select select-bordered max-w-x">
            		<option selected="selected">게시판을 선택해주세요.</option>
            		<option value="1">공지</option>
            		<option value="2">자유</option>
            	</select>
			</td>
          </tr>
          <tr>
            <th>작성자</th>
            <td>${rq.loginedMember.nickname }</td>
          </tr>
          <tr>
            <th>제목</th>
            <td>
              <input required="required" type="text" class="w-96 input input-bordered w-full max-w-xs" name="title" placeholder="제목" value="${article.title}"/>
            </td>
          </tr>
          <tr>
            <th>내용</th>
            <td>
              <textarea required="required" type="text" class="w-full textarea textarea-bordered" name="body" placeholder="내용" >${article.body}</textarea>
            </td>
          </tr>
        </tbody>
      </table>   
	
	  <div class="btns">
		<button class="btn btn-link" type="button" onclick="history.back();">뒤로가기</button>
		<button type="submit" class="btn btn-link" >작성</button>
	  </div>
	</form>
  </div>
</section>
<%@include file="../common/foot.jspf" %>