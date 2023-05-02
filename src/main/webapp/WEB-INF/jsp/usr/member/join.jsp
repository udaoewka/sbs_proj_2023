<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageTitle" value="회원가입"/>
<%@include file="../common/head.jspf" %>

<script>
	let MemberJoin__submitDone = false;
	function MemberJoin__submitForm(form) {
		if ( MemberJoin__submitDone ) {
			alert("처리중입니다.");
			return;
		}    
		
		form.loginId.value = form.loginId.value.trim();
		
		if( form.loginId.value.length == 0){
			alert('로그인 아이디를 입력해주세요.');
			form.loginId.focus();
			return;
		}
		
		form.loginPw.value = form.loginPw.value.trim();
		
		if( form.loginPw.value.length == 0){
			alert('비밀번호를 입력해주세요.');
			form.loginPw.focus();
			return;
		}
		
		form.loginPwConfirm.value = form.loginPwConfirm.value.trim();
		
		if( form.loginPwConfirm.value.length == 0){
			alert('비밀번호 확인란을 입력해주세요.');
			form.loginPwConfirm.focus();
			return;
		}
		
		if( form.loginPw.value.trim() != form.loginPwConfirm.value.trim()){
			alert('비밀번호가 일치하는지 확인해 주세요.');
			form.cellPhoneNo.focus();
			return;
		}
		
		form.name.value = form.name.value.trim();
		
		if( form.name.value.length == 0){
			alert('이름을 입력해주세요.');
			form.name.focus();
			return;
		}
		
		form.nickname.value = form.nickname.value.trim();
		
		if( form.nickname.value.length == 0){
			alert('닉네임을 입력해주세요.');
			form.nickname.focus();
			return;
		}
		
		form.email.value = form.email.value.trim();
		
		if( form.email.value.length == 0){
			alert('이메일을 입력해주세요.');
			form.email.focus();
			return;
		}
		
		form.cellPhoneNo.value = form.cellPhoneNo.value.trim();
		
		if( form.cellPhoneNo.value.length == 0){
			alert('휴대전화번호를 입력해주세요.');
			form.cellPhoneNo.focus();
			return;
		}
		
		MemberJoin__submitDone = true;
		form.submit();		
	}
</script>

<section class="mt-5">
  <div class="container mx-auto px-3">
	<form class="table-box-type-1" method="POST" action="../member/doJoin" onsubmit="MemberJoin__submit(this); return false;">
	  <input type="hidden" name="aftrerJoinUri" value="${param.aftrerJoinUri}"/>
	
      <table>
      <colgroup>
        <col width="200"/>
      </colgroup>
        <tbody>
          <tr>
            <th>로그인아이디</th>
            <td>
            	<input type="text" class="w-96 input input-bordered w-full max-w-xs"  name="loginPw" placeholder="로그인아이디를 입력해주세요."/>
            </td>
          </tr>
          <tr>
            <th>비밀번호</th>
            <td>
            	<input type="password" class="w-96 input input-bordered w-full max-w-xs"  name="loginPw" placeholder="비밀번호를 입력해주세요."/>
            </td>
          </tr>
          <tr>
            <th>비밀번호 확인</th>
            <td>
            	<input type="password" class="w-96 input input-bordered w-full max-w-xs"  name="loginPwConfirm" placeholder="비밀번호 확인을 입력해주세요."/>
            </td>
          </tr>
          <tr>
            <th>이름</th>
            <td>
            	<input type="text" class="input input-bordered"  name="name" placeholder="이름을 입력해주세요." value="${rq.loginedMember.name }" />
            </td>
          </tr>
          <tr>
            <th>닉네임</th>
            <td>
            	<input type="text" class="input input-bordered"  name="nickname" placeholder="닉네임을 입력해주세요." value="${rq.loginedMember.nickname }" />
            </td>
          </tr>
          <tr>
            <th>이메일</th>
            <td>
            	<input type="text" class="input input-bordered"  name="email" placeholder="이메일을 입력해주세요." value="${rq.loginedMember.email }" />
            </td>
          </tr>
          <tr>
            <th>휴대전화번호</th>
            <td>
            	<input type="text" class="input input-bordered"  name="cellphoneNo" placeholder="휴대전화번호를 입력해주세요." value="${rq.loginedMember.cellphoneNo }" />
            </td>
          </tr>
          <tr>
          	<th>회원가입</th>
          	<td>
          		<input type="submit" class="btn btn-primary" value="회원정보수정" />
          		<button type="button" class="btn btn-outline btn-primary" onclick="history.back();">뒤로가기</button>
          	</td>
          </tr>
        </tbody>
      </table>   
	</form>
  </div>
</section>
<%@include file="../common/foot.jspf" %>