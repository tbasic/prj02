<%@page import="customer.vo.Notice"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>Notice.jsp</h3>
<%
//String sql="select * from notices order by to_number(seq) desc";
//dbcon
//Class.forName("oracle.jdbc.driver.OracleDriver");

//String url="jdbc:oracle:thin:@localhost:1521:xe";
//String user="hr";
//String pw="123456";
//Connection con=DriverManager.getConnection(url,user,pw);
//실행
//Statement st=con.createStatement();

//결과
//ResultSet rs=st.executeQuery(sql);
%>

<table width="500" border="1">

<tr>
	<td>번호</td>
	<td>제목</td>
	<td>작성자</td>
	<td>작성일</td>
	<td>조회수</td>
</tr>
<%-- <%

List<Notice> list=(List<Notice>)request.getAttribute("list");
for(Notice n:list){
	pageContext.setAttribute("n", n);
%> --%>

<c:forEach items="${list }" var="n">
	<tr>
		<td>${n.seq }</td>
		<td><a href="noticeDetail.do?c=${n.seq }">${n.title }</a></td>
		<td>${n.writer }</td>
		<td>${n.regdate }</td>
		<td>${n.hit }</td>
	</tr>
</c:forEach>

<%-- <%
}
%> --%>
</table>

<a href="noticeReg.do">write</a>
</body>
</html>
