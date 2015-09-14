package com.challenge.register.bean;

public class Userinfo 
{
	String name="";
	String phone="";
	String wx_id="";
	String password="";
	String F_lab="";
	String S_lab="";
	String T_lab="";
	String Team_id="";
	public String getName(){
		return name;
	}
	public void setName(String name1){
		name=name1;
	}
	public String getPhone(){
		return phone;
	}
	public void setPhone(String phone1){
		phone= phone1;
	}
	public String getWx_id(){
		return wx_id;
	}
	public void setWx_id(String wx_id1){
		wx_id=wx_id1;
	}
	public String getPassword(){
		return password;
	}
	public void setPassword(String password1){
		password= password1;
	}
	public String getF_lab(){
		return F_lab;
	}
	public void setF_lab(String f_lab1){
		F_lab = f_lab1;
	}
	public String getS_lab(){
		return S_lab;
	}
	
	public void setS_lab(String s_lab1){
		S_lab = s_lab1;
	}
	public String getT_lab(){
		return T_lab;
	}
	public void setT_lab(String T_lab1){
		T_lab = T_lab1;
	}
	public void setTeam_id(String Team_id1){
		Team_id= Team_id1;
	}
}
