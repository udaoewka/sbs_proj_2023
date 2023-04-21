<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
	var historyBack = '${historyBak}' == 'true';
	var msg = '${msg}'.trim();
	if(msg) {
		alert(msg);
	}
	if(historyBack) {
		history.back();
	}
	var replaceUri = '${repllaceUri}'.trim();
	if(replaceUri){
		location.replaceUri(replaceUri);
	}
</script>
