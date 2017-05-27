<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSON JSP </title>
</head>
<body>
  <sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost/jsonread" user="root"  password=""/>
 <sql:query var="result" dataSource="${snapshot}" >
SELECT * from matchtable;
</sql:query>
 
<table>
<tr>
   <th>NAME</th>
   <th>MATCH</th>
   <th>DATE</th>
   <th>Team 1 Key</th>
   <th>Team 1 Name</th>
   <th>Team 1 Code</th>
   <th>Team 2 Key</th>
   <th>Team 2 Name</th>
   <th>Team 2 Code</th>
   <th>Team 1 Score</th>
   <th>Team 2 Score</th>
   
   
 
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.name}"/></td>
   <td><c:out value="${row.matchname}"/></td>
 	<td><c:out value="${row.date}"/></td>
   <td><c:out value="${row.t1key}"/></td>
   <td><c:out value="${row.t1name}"/></td>
   <td><c:out value="${row.t1code}"/></td>
   <td><c:out value="${row.t2key}"/></td>
   <td><c:out value="${row.t2name}"/></td>
   <td><c:out value="${row.t2code}"/></td>
   <td><c:out value="${row.t1score}"/></td>
   <td><c:out value="${row.t2score}"/></td>
 
</tr>
</c:forEach>
</table>
 
</body>
</html>