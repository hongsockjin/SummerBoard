<%@ page contentType="text/html;charset=euc-kr"  import="java.sql.*" %>

<HTML>
	<HEAD>
		<TITLE> �а� ���̺� ��� ���α׷�  </TITLE>
		<meta http-equiv="content-type" content="text/html; charset=euc-kr">
	 </HEAD>

<BODY>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@192.168.56.101:1621:GCS";
	int i = 0;
try {
	// DB ������ connection
	Connection Con = DriverManager.getConnection(url, "scott", "tiger");
	Statement stmt = Con.createStatement();
	// select ������ ���ڿ� ���·� ����
	String sql = "SELECT empno,ename,job FROM emp";

	// select���� �����ϸ� ������������ resultset Ŭ���� �ν��Ͻ��� ����
	ResultSet rs = stmt.executeQuery(sql);
%>
	<center>
	<h3> << Department ���̺� >> </h3>
	<table border="1" cellspacing="1">
	  <tr>
		<td>����</td>
		<td>�а��ڵ�</td>
		<td>�� �� ��</td>
	  </tr>
<%
	  // ������ �����ͱ��� �ݺ�
	  while ( rs.next() )  {
%>	  <tr>
		<td><%= ++i %></td>
		<td><%= rs.getString(1) %> </td>
		<td><%= rs.getString(2) %> </td>
	  </tr>
<% } %>
	</table> 
<%
	// ����� �ڿ��� �ݳ�
	rs.close();
	stmt.close();
	Con.close();
%>
	<h4>DB���� ���������� ��µǾ����ϴ�!!!</h4>
<%
	} catch (SQLException e) {
%>
		<h4>������ �߻� �߱���. �ٽ� Ȯ���� ������!!!</h4>
<% } %>
	</center>
</BODY>
</HTML>
