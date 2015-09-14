package com.challenge.teamfind.servlet;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.challenge.teamfind.bean.Series;
import com.challenge.teamfind.util.Config;
import com.challenge.teamfind.util.DBCon;
import com.challenge.teamfind.util.TeamMatch;

/**
 * Servlet implementation class MatchTeam
 */
@WebServlet("/MatchTeam")
public class MatchTeam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MatchTeam() {
        super();
        // TODO Auto-generated constructor stub
    }

    public void init(ServletConfig config) throws ServletException{
    	super.init(config);
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(true);
		String uid = (String)session.getAttribute("uid");
		String type = request.getParameter("type");
		Config.init();
		
		TeamMatch tm = new TeamMatch();
		String tid = tm.match(uid, type);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("C_type.jsp?tid="+tid+"");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
