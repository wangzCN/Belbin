package com.challenge.teamfind.util;

import java.io.*;
import java.sql.*;

public class TeamMatch {

	public TeamMatch(){
		
	}
	public String match(String uid,String type)
{
		String tid ="00";
		int tid_i=0;
		String tname="team"+type;
		System.out.println(tname);
		Connection con=null;
  		Statement sql=null;
  		ResultSet rs=null;
  		String[] str = new String[3];
  		try{
  			Class.forName("com.mysql.jdbc.Driver");
  		}catch (Exception e){
  			System.out.print(e);
  		}
  		try{
  			String uri = "jdbc:mysql://localhost/heypartner";
  		    con = DriverManager.getConnection(uri,"root","0827");
  			sql = con.createStatement();
	  		rs = sql.executeQuery("select F_lab,S_lab,T_lab from user where User_ID='"+uid+"' ");	
	  		if(type.equals("3")){
	  			if(rs.next()){
	  				str[0] = Config.getThreeCharacter(rs.getString("F_lab"));
	  				str[1] = Config.getThreeCharacter(rs.getString("S_lab"));
	  				str[2] = Config.getThreeCharacter(rs.getString("T_lab"));
	  				if(str[0]==null&&str[1]==null&&str[2]==null)
	  				{
	  					return "00";
	  				}
	  			}
	  		}
	  		if(type.equals("4")){
	  			if(rs.next()){
	  				str[0] = Config.getFourCharacter(rs.getString("F_lab"));
	  				str[1] = Config.getFourCharacter(rs.getString("S_lab"));
	  				str[2] = Config.getFourCharacter(rs.getString("T_lab"));
	  				if(str[0]==null&&str[1]==null&&str[2]==null)
	  				{
	  					return "00";
	  				}
	  			}
	  		}
	  		if(type.equals("5")){
	  			if(rs.next()){
	  				str[0] = Config.getFiveCharacter(rs.getString("F_lab"));
	  				str[1] = Config.getFiveCharacter(rs.getString("S_lab"));
	  				str[2] = Config.getFiveCharacter(rs.getString("T_lab"));
	  				if(str[0]==null&&str[1]==null&&str[2]==null)
	  				{
	  					return "00";
	  				}
	  			}
	  		}
	  		if(type.equals("6")){
	  			if(rs.next()){
	  				str[0] = Config.getSixCharacter(rs.getString("F_lab"));
	  				str[1] = Config.getSixCharacter(rs.getString("S_lab"));
	  				str[2] = Config.getSixCharacter(rs.getString("T_lab"));
	  				if(str[0]==null&&str[1]==null&&str[2]==null)
	  				{
	  					return "00";
	  				}
	  			}
	  		}
	  		if(type.equals("7")){
	  			while(rs.next()){
	  				str[0] = Config.getSevenCharacter(rs.getString("F_lab"));
	  				str[1] = Config.getSevenCharacter(rs.getString("S_lab"));
	  				str[2] = Config.getSevenCharacter(rs.getString("T_lab"));
	  				if(str[0]==null&&str[1]==null&&str[2]==null)
	  				{
	  					return "00";
	  				}
	  			}
	  		}
	  		if(type.equals("8")){
	  			if(rs.next()){
	  				str[0] = Config.getEightCharacter(rs.getString("F_lab"));
	  				str[1] = Config.getEightCharacter(rs.getString("S_lab"));
	  				System.out.print(str[0]+str[1]);
	  				str[2] = Config.getEightCharacter(rs.getString("T_lab"));
	  				if(str[0]==null&&str[1]==null&&str[2]==null)
	  				{
	  					return "00";
	  				}
	  			}
	  		}
		//strÊÇhashmapµÄvalue
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
  		
  		try{
		for(int i=0;i<3;i++){
			if(str[i] == null){ continue;}
			rs= sql.executeQuery("select tid from "+tname+" where "+str[i]+" is null");
			if(rs.next()){
				tid = rs.getString("tid");
			}
			if(tid != "00")
			{
				sql.executeUpdate("update "+tname+" set "+str[i]+"="+uid+" where tid="+tid+"");
				break;
			}
		}
  		}catch(Exception e){
  			System.out.print(e);
  		}
  		
  		try{
		if(tid =="00"){
			rs=sql.executeQuery("select count(*) as tid from "+tname+"");
			if(rs.next()){
				tid_i = rs.getInt("tid");
			}
			tid=type+tid_i;
			for(int i=0;i<3;i++){
				if(str[i]!=null)
				{sql.executeUpdate("insert into "+tname+"(tid,"+str[i]+") values("+tid+","+uid+")");}
				else{
					continue;
				}
			}
		}
  		}catch(Exception e){
  			System.out.print(e);
		}
  		try{
  			sql.executeUpdate("update user set Team_ID="+tid+" where User_ID="+uid+"");
  			con.close();
  		}catch(Exception e){
  			System.out.print(e);
  		}
  		return tid;
  	}
}

