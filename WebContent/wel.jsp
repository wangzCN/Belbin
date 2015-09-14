<%@ page language="java" import="java.util.*,  java.sql.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>HeyPartner-登录成功</title>
  </head>
  
  <body>
  	<%
  //接收用户名和密码
  			String u =request.getParameter("user");
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
	  		 	rs = sql.executeQuery("select User_ID,Team_ID from user where Name = '"+ u +"'");
	  		 	String tid="";
	  		 	String uid="";
	  		 	if(rs.next())
	  		 	{
	  		 		tid=rs.getString("Team_ID");
	  		 		uid=rs.getString("User_ID");
	  		 		session.setAttribute("name",u);
	  		 		session.setAttribute("uid",uid);
	  		 		response.sendRedirect("C_type.jsp?tid="+tid+"");

	  		 	}
	  		}catch(Exception e)
  			{
  			System.out.println(e);
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
