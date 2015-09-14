<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.sql.*,java.io.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String username =request.getParameter("username"); 
session.setAttribute("username",username);
String passwd=request.getParameter("passwd");
session.setAttribute("passwd",passwd);
String phone=request.getParameter("phone");
session.setAttribute("phone",phone);
String wx=request.getParameter("wx");
session.setAttribute("wx",wx);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>HeyPartner—用户注册</title>

  </head>
  
  <body>
  	<%
  //接收用户名和密码	
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
	  		 	rs = sql.executeQuery("select * from user where name = '"+ username +"'");

	  			if(rs.next())
	  			{
	  				response.sendRedirect("Register_user.jsp?ret=0");
	  			}
	  			else
	  			{
	  				RequestDispatcher rd = request.getRequestDispatcher("Register");
	  	            rd.forward(request, response);
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
