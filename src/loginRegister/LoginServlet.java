package loginRegister;

import java.io.*;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import JavaBean.LoginBean;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String user_name=request.getParameter("username");	
		String user_password=request.getParameter("password");
		if(user_name.equals("haobangpig")&&user_password.equals("haobang123")){
			response.sendRedirect("SuperUser.jsp");
		}
		try
		{	Class.forName("com.mysql.jdbc.Driver");
			Connection con;
			Statement sql;
			ResultSet rs;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","haobang");
			sql=con.createStatement();
			String sqlString="select * from BBB_user where user_name='"+user_name+"'and user_password='"+user_password+"'";
			rs=sql.executeQuery(sqlString);
			if(rs.next()){
				LoginBean nn = new LoginBean();
				nn.setUserName(user_name);
				nn.setPassword(user_password);
				HttpSession session=request.getSession();
				session.setAttribute("userName",user_name);
				response.sendRedirect("BBB_main.jsp");

			}else{
				String a ="BBB_index(system).jsp";
				out.println("<!DOCTYPE html><html><body>Invalid password or username,please <a href="+a+">try again</a></body></html>");
				//response.sendRedirect("BBB_index(system).jsp");
			}
		}catch(SQLException | ClassNotFoundException e1){
			PrintWriter outq=response.getWriter();
			outq.println(e1);
		}
		
	}

}
