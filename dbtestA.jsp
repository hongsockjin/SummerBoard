<%@ page import="java.sql.Connection,java.sql.*,javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException,javax.sql.DataSource" %>

<%
	Connection Conn=null;
	
	try {
		InitialContext ctx = new InitialContext();
		DataSource ds=(DataSource)ctx.lookup("test1");
		Conn=ds.getConnection();
		
		PreparedStatement pstmt=Conn.prepareStatement("SELECT * FROM DEPT");
		
		ResultSet Rs = pstmt.executeQuery();
		while(Rs.next())
		{
			out.println ("DEPTNO ?" + Rs.getString(1) + "<br />");
			out.println ("DNAME ?" + Rs.getString(2) + "<br />");
			out.println ("LOC ?" + Rs.getString(3) + "<br />");
		}
		} catch(SQLException e) {
			out.println(e.getMessage());
			throw new SQLException(e.getMessage());
		}	catch(NamingException e) {
			out.println(e.getMessage());
		}	catch(Exception e) {
			out.println(e.getMessage());
			throw new SQLException(e.getMessage());
		}	finally {
			try {
				
				}	catch(Exception e) {}
		}
	%>
		