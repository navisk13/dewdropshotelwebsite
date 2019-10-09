

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Addcomment
 */
@WebServlet("/Addcomment")
public class Addcomment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addcomment() {
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
		String comments = request.getParameter("comments");
		try
		{
		Class.forName("org.postgresql.Driver");
		Connection  connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/room",
			     "postgres", "joker");
		Statement statement = connection.createStatement();

		int result = statement.executeUpdate("insert into comments(comment) values ('" +comments+ "');");
		request.setAttribute("message", "Thank You!");
        RequestDispatcher rd = request.getRequestDispatcher("gallery.jsp");
        rd.forward(request, response);
		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
		
	}

}
