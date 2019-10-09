

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CreateUser
 */
@WebServlet("/CreateUser")
public class CreateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String gender = request.getParameter("gender");
		String mobile = request.getParameter("mobile");
		String password = request.getParameter("password");
		try
		{
		Class.forName("org.postgresql.Driver");
		Connection  connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/room",
			     "postgres", "joker");
		Statement statement = connection.createStatement();

		int result = statement.executeUpdate("insert into account(fname,lname,gender,phone,password,username) values ('"+fname+"','"+lname+"','"+gender+"','"+mobile+"','"+password+"','"+uname+"');");
		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
		response.sendRedirect("signupsuccess.jsp");
		
		
	}

}
