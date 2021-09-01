
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	body {background-color: #147814;border: double;margin: 20px;}
	input {background-color: #A48654}
	
	</style>
</head>
<body>
	<table border="">
	<tr>
	<th>
	<form action="<%=request.getContextPath() %>/" method="POST">
	<!-- 사용자 입력은 받지 않지만 보내주는 데이터 -->
	<input type="hidden" name="a" value="add" /> 
	<label for ="last_name">이름</label><br/>
	<input type="text" name="name" id="name"/><br/>
	<label for ="first_name">휴대폰번호</label><br/>
	<input type="text" name="hp" id="hp"/><br/>
	<label for ="email">전화번호</label><br/>
	<input type="text" name="tel" id="tel"/><br/>
	<input type="submit" value="등록"/>
	</form>
	</th>
	</tr>
	</table>
</body>
</html>