

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Viewbooking
 */
@WebServlet("/Viewbooking")
public class Viewbooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Viewbooking() {
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
		try
		{
		String id = request.getParameter("id");
		Class.forName("org.postgresql.Driver");
		Connection  connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/room",
			     "postgres", "joker");
		Statement statement = connection.createStatement();

		String data = "";
		ResultSet result = statement.executeQuery("SELECT * from reservations where bookingid= "+id);
		while(result.next()) {
			data=result.getString("room_type")+","+result.getString("arrival")+","+result.getString("departure")+","+result.getString("adults")+","+result.getString("children");
		}
		request.setAttribute("details", data);
		RequestDispatcher view = request.getRequestDispatcher("bookingdetails.jsp");
		view.forward(request, response);
		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
	}

}
