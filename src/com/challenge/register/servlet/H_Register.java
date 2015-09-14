package com.challenge.register.servlet;
import java.util.ArrayList;
import java.util.Iterator;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import com.challenge.register.bean.*;
import java.util.Collections; 
import java.util.Comparator;
public class H_Register extends HttpServlet
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void init(ServletConfig config) throws ServletException
	{
		super.init(config);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
	{
		String input="";
		int i,j;
		int[] score=new int[56];
		HttpSession session = request.getSession(true);
		for( i=0;i<56;i++)
		{	
			j=i+1;
			input="s_"+j;
			score[i]=Integer.parseInt((String)session.getAttribute(input));
		}
		String name = (String)session.getAttribute("username");
		String phone = (String)session.getAttribute("phone");
		String wx_id = (String)session.getAttribute("wx");
		String passwd = (String)session.getAttribute("passwd");
		ArrayList<Test> listReg = new ArrayList<Test>();
		listReg.add(new Test("CW",score[6]+score[8]+score[23]+score[27]+score[33]+score[45]+score[52]));
		listReg.add(new Test("CO",score[3]+score[9]+score[16]+score[31]+score[37]+score[42]+score[54]));
		listReg.add(new Test("SH",score[5]+score[12]+score[18]+score[25]+score[35]+score[46]+score[48]));
		listReg.add(new Test("PL",score[2]+score[14]+score[19]+score[28]+score[39]+score[40]+score[53]));
		listReg.add(new Test("RI",score[0]+score[10]+score[21]+score[30]+score[36]+score[47]+score[51]));
		listReg.add(new Test("ME",score[7]+score[11]+score[22]+score[26]+score[32]+score[44]+score[49]));
		listReg.add(new Test("TW",score[1]+score[13]+score[20]+score[24]+score[34]+score[41]+score[55]));
		listReg.add(new Test("FI",score[4]+score[15]+score[17]+score[29]+score[38]+score[43]+score[50]));
		
		Collections.sort(listReg,new Comparator<Test>()
		        { 
		            public int compare(Test arg0, Test arg1) 
		            { 
		                return arg1.getType_score()-arg0.getType_score(); 
		            } 
		        }); 

		Iterator<Test> ri=listReg.iterator();
        String F_lab = ri.next().getType_name();
        String S_lab = ri.next().getType_name();
        String T_lab = ri.next().getType_name();

        Userinfo uinfo = new Userinfo();
        session.setAttribute("userinfo", uinfo);
        uinfo.setName(name);
        uinfo.setPhone(phone);
        uinfo.setWx_id(wx_id);
        uinfo.setPassword(passwd);
        
        uinfo.setF_lab(F_lab);
        uinfo.setS_lab(S_lab);
        uinfo.setT_lab(T_lab);
        
        
        RequestDispatcher dispatcher=request.getRequestDispatcher("Register_done.jsp");
        dispatcher.forward(request, response);        
	}
}

