

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Reserve
 */
@WebServlet("/Reserve")
public class Reserve extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reserve() {
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
		String room = request.getParameter("room");
		String adate = request.getParameter("adate");
		String ddate = request.getParameter("ddate");
		String adults = request.getParameter("adults");
		String kids = request.getParameter("kids");
		try
		{
		
		HttpSession session = request.getSession(false);
		if(session == null || session.getAttribute("user")==null) {
			response.sendRedirect("login.jsp");
		}
		else {
			String user = (String)session.getAttribute("user");
			Class.forName("org.postgresql.Driver");
			Connection  connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/room",
				     "postgres", "joker");
			Statement statement = connection.createStatement();
			
			String current="";
			ResultSet curper = statement.executeQuery("SELECT user_id from account where username= '"+user+"';");
			while(curper.next()) {
				current=curper.getString("user_id");
			}
			log("insert into reservations(user_id,room_type,arrival,departure,adults,children) values ("+current+",'"+room+"','"+adate+"','"+ddate+"','"+adults+"','"+kids+"');");

			int result = statement.executeUpdate("insert into reservations(user_id,room_type,arrival,departure,adults,children) values ("+current+",'"+room+"','"+adate+"','"+ddate+"','"+adults+"','"+kids+"');");
			String data = "";
			ResultSet dat = statement.executeQuery("SELECT bookingid from reservations where room_type= '"+room+"' and arrival='"+adate+"' and departure='"+ddate+"' and adults="+adults+" and children="+kids+";");
			while(dat.next()) {
				data=dat.getString("bookingid");
			}
			request.setAttribute("details", data);
			RequestDispatcher view = request.getRequestDispatcher("bookingsuccess.jsp");
			view.forward(request, response);
			
			
		}
	}catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
	}
}
