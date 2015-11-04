package loginRegister;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		String userName=request.getParameter("user_name");
		String userPassword=request.getParameter("user_password");
		String userEmail=request.getParameter("user_email");
		String userTrueName=request.getParameter("user_trueName");
		String usergender=request.getParameter("user_gender");
		String userBirthday=request.getParameter("user_birthday_month")+"-"+request.getParameter("user_birthday_day")+"-"+request.getParameter("user_birth_year");
		String usernNation=request.getParameter("user_nation");
		String userEdu=request.getParameter("user_edu");
		String userWork=request.getParameter("user_work");
		String userPhone=request.getParameter("user_phone");
		String userPlace=request.getParameter("user_place");
		
		if(userName!=null && userPassword!=null){
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con;
				Statement sql;
				ResultSet rs;
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","haobang");
				sql=con.createStatement();
				String sqlString="select * from BBB_user where user_name='"+userName+"'and user_password='"+userPassword+"'";
				rs=sql.executeQuery(sqlString);
				if(rs.next()){
					PrintWriter out=response.getWriter();
					String a ="BBB_register.jsp";
					out.println("<!DOCTYPE html><html><body>the username has existed please enter another username please <a href="+a+">try again</a></body></html>");
				}else{
					String sqlString2="insert into BBB_user (user_name,user_password,user_truename,user_gender,user_birth,user_nation,user_edu,user_work,user_phone,user_place,user_email)"+"values('"+userName+"','"+userPassword+"','"+userTrueName+"','"+usergender+"','"+userBirthday+"','"+usernNation+"','"+userEdu+"','"+userWork+"','"+userPhone+"','"+userPlace+"','"+userEmail+"')";
				sql.executeUpdate(sqlString2);
				PrintWriter out=response.getWriter();
				
				out.println("successful! ");
					
				}
			}catch(SQLException | ClassNotFoundException e1){
				PrintWriter outq=response.getWriter();
				outq.println(e1);
				
			}
			
		}
		
	}

}
