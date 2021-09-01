<%@page import="com.numberlist.vo.NumberListVo"%>
<%@page import="java.util.List"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
List<NumberListVo> list = (List<NumberListVo>)request.getAttribute("list");
%>	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>telephone book</title>
<style>
	body {background-color: #147814;border: double;margin: 1px;}
	form {background-color: #A48654;border: double;margin: 1px;}
	input {background-color: #A48654;border: double;margin: 1px;}
	a {color: #A48654;}
	

</style>
</head>
<body>
	<h3>telephone book</h3>
	
	<jsp:include page="/WEB-INF/views/includes/header.jsp">
	<jsp:param value="" name="s"/>
	</jsp:include>
	
	<form action="<%=request.getContextPath() %>/" method="POST">
		<label for="search"></label>
		<input type="hidden" name="a" value="search" /> 
		<input type="text" name="search" id="search" />
		<input type="submit" value="search">
	</form>
	</tr>
	</br>
	<table border="">
		<tr>
			<td>이름</td>
			<td>휴대폰번호</td>
			<td>전화번호</td>
			<td></td>
		</tr>
		<%
	for (NumberListVo vo : list) {
	%>
		<tr>
			<td><%=vo.getNumberName() %></td>
			<td><%=vo.getNumberHp() %></td>
			<td><%=vo.getNumberTel() %></td>		
			<td colspan="">
				<!-- 삭제 폼 -->
				<form action="<%=request.getContextPath()%>/"
					method="POST">
					<input type="hidden" name="a" value="delete" /> 
					<input type="hidden" name="no" value="<%=vo.getNumberId() %>" />
					<input type="submit" value="delete" />
				</form>
			</td>	
		</tr>	
		<%
		}
		%>
		</table>
		</br>
			<a href="<%=request.getContextPath() %>/?a=insert">추가 등록</a>
</body>
</html>