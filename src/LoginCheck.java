

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginCheck
 */
@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginCheck() {
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
		// TODO Auto-generated method stub
		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
		if(authenticateUser(uname,password))
		{
			HttpSession session = request.getSession(true);
			if(request.getParameter("rememberMe")!=null) {
				Cookie usern = new Cookie("username", uname);
				Cookie pass = new Cookie("password", password);
				usern.setMaxAge(12000);
				pass.setMaxAge(12000);
				response.addCookie(usern);
				response.addCookie(pass);
			}
			session.setAttribute("user", uname);
			session.setMaxInactiveInterval(1500); 
			response.sendRedirect("index.jsp");
		}
		else
		{
			request.setAttribute("errorMessage", "Invalid username or password!");
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
		}
	}
	
	public Boolean authenticateUser(String username, String password) {
		  try {
		        Connection  connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/room",
					     "postgres", "joker");
		   Statement statement = connection.createStatement();
		   ResultSet result = statement.executeQuery("SELECT password from account where username = '"+ username+"'");
		   if(!result.next()) {
		    return false;
		   }
		   else {
		    if(result.getString("password").equals(password)) {
		     return true;
		    }
		    else {
		     return false;
		    }
		   }
		  }catch(SQLException e) {
		   e.printStackTrace();
		  }
		  return false;
		 }

}
