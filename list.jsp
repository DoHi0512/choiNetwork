<%@page import="DBPKG.UTILL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<%@page import = "DBPKG.UTILL"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" href = "style.css">
<title>Insert title here</title>
</head>
<body>
<jsp:include page = "header.jsp"/>

<section>
<h2><b>회원목록 조회/수정</b></h2>
<form>
<table>
<tr>
<td>회원번호</td>
<td>회원성명</td>
<td>전화번호</td>	
<td>주소</td>
<td>가입일자</td>
<td>고객등급</td>
<td>거주지역</td>
</tr>
<%
request.setCharacterEncoding("UTF-8");
Connection conn = null;
Statement stmt = null;
String grade = "";
try{
	conn = UTILL.getConnection();
	stmt = conn.createStatement();
	String sql= "select * from member_tbl_02 order by custno";
	ResultSet rs = stmt.executeQuery(sql);
	while(rs.next()){
		grade = rs.getString("grade");
		switch(grade){
		case "A":
			grade = "VIP";
			break;
		case "B":
			grade = "일반";
			break;
		case "C":
			grade = "직원";
			break;
		}
	

%>
<tr>
<td><%=rs.getString("custno") %></td>
<td><%=rs.getString("custname") %></td>
<td><%=rs.getString("phone") %></td>
<td><%=rs.getString("address") %></td>
<td><%=rs.getString("joindata") %></td>
<td><%=grade %></td>
<td><%=rs.getString("city") %></td>
</tr>
<%

	}
}catch(Exception e){
	e.printStackTrace();
}
%>
</table>
</form>
</section>
<jsp:include page = "footer.jsp"/>
</body>
</html>