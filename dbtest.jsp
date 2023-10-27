<%@ page contentType="text/html;charset=euc-kr"  import="java.sql.*" %>

<HTML>
	<HEAD>
		<TITLE> 학과 테이블 출력 프로그램  </TITLE>
		<meta http-equiv="content-type" content="text/html; charset=euc-kr">
	 </HEAD>

<BODY>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@192.168.56.101:1621:GCS";
	int i = 0;
try {
	// DB 서버에 connection
	Connection Con = DriverManager.getConnection(url, "scott", "tiger");
	Statement stmt = Con.createStatement();
	// select 문장을 문자열 형태로 구성
	String sql = "SELECT empno,ename,job FROM emp";

	// select문을 수행하면 데이터정보가 resultset 클래스 인스턴스로 리턴
	ResultSet rs = stmt.executeQuery(sql);
%>
	<center>
	<h3> << Department 테이블 >> </h3>
	<table border="1" cellspacing="1">
	  <tr>
		<td>순번</td>
		<td>학과코드</td>
		<td>학 과 명</td>
	  </tr>
<%
	  // 마지막 데이터까지 반복
	  while ( rs.next() )  {
%>	  <tr>
		<td><%= ++i %></td>
		<td><%= rs.getString(1) %> </td>
		<td><%= rs.getString(2) %> </td>
	  </tr>
<% } %>
	</table> 
<%
	// 사용한 자원을 반납
	rs.close();
	stmt.close();
	Con.close();
%>
	<h4>DB에서 정상적으로 출력되었습니다!!!</h4>
<%
	} catch (SQLException e) {
%>
		<h4>에러가 발생 했군요. 다시 확인해 보세요!!!</h4>
<% } %>
	</center>
</BODY>
</HTML>
