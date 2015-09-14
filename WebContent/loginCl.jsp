<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'loginCl.jsp' starting page</title>

  </head>
  
  <body>
  	<%
  //接收用户名和密码
		String u = request.getParameter("username");
		String p = request.getParameter("passwd");	
  		Connection con=null;
  		Statement sql=null;
  		ResultSet rs=null;
  			try{
  				Class.forName("com.mysql.jdbc.Driver");
  			}
  			catch (Exception e){
  				out.print(e);
  			}
  			try{
  				String uri = "jdbc:mysql://localhost/heypartner";
  				con = DriverManager.getConnection(uri,"root","0827");
  				sql = con.createStatement();
	  		 	rs = sql.executeQuery("select password from user where name = '"+ u +"'");		
	  			if(rs.next())
	  			{
	  				if(rs.getString(1).equals(p))
	  				{
	  					response.sendRedirect("wel.jsp?user="+u);
	  				}
	  				else
	  				{
	  				response.sendRedirect("login.jsp?errNo=1");
	  				}
	  			}
	  			else
	  			{
	  			response.sendRedirect("login.jsp?errNo=2");
	  			}

	  		}catch(Exception e)
  			{
  			e.printStackTrace();
  			}
  			finally{
	  		if(null != rs){
	  			rs.close();
	  		}
	  		if(null != sql){
	  			sql.close();
	  		}
  			if(null != con){
  				con.close();
  			}
  		}
  	 %>
  </body>
</html>
