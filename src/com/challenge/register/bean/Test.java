package com.challenge.register.bean;
public class Test
{
	String type_name="";
	int type_score=0;
	public Test(String name,int score)
	{
		type_name=name;
		type_score=score;
	}
	public void setType_name(String name)
	{
		type_name=name;
	}
	public String getType_name()
	{
		return type_name;
	}
	public void setType_score(int score)
	{
		type_score=score;
	}
	public int getType_score()
	{
		return type_score;
	}
}