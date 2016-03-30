<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html  
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<script type="text/javascript">
	function toDownload(storeName, realName) {
		document.getElementById('storeName').value = storeName;
		document.getElementById('realName').value = realName;
		document.getElementById('downForm').submit();
	}
</script>
</head>
<body>
	<c:forEach items="${result }" var="item">
		<a href="#"
			onclick="javascript:toDownload('${item[0] }','${item[1]}');">${item[1]
			}</a>
	</c:forEach>
	<form id="downForm"
		action="<c:url value="/background/fileOperate/download.html" />"
		method="post">
		<input type="hidden" name="storeName" id="storeName" value="" /> <input
			type="hidden" name="realName" id="realName" value="" />
	</form>
</body>
</html>
