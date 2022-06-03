<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파일 업로드</title>
</head>

<script type="text/javascript">

	function sendIt() {
		
		var f = document.myForm;
		
		f.action = "<%=cp%>/homesool/upload_p_ok.com";
		f.submit();
	}
</script>

<body>

<form action="" method="post" enctype="multipart/form-data" name="myForm">

<input type="hidden" name="prod_no" value="${dto.prod_no }"/><br/> 
상품명: <input type="text" name="prod_name"/><br/> 
파일: <input type="file" name="upload" /><br/>
가격: <input type="text" name="prod_price"/><br/>
카테고리: <input type="text" name="prod_cate"/><br/> 
수량: <input type="text" name="prod_quan"/><br/> 


<input type="submit" value=" 전송 " onclick="sendIt();"/>

</form>

<input type="button" value=" 리스트 " onclick="javascript:location.href='<%=cp %>/homesool/list_p.com';"/>

</body>
</html>