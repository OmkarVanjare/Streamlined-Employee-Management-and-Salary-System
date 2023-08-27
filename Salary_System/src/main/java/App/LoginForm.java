package App;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginForm")
public class LoginForm  extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("Password");
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user_db","root","admin");
			PreparedStatement ps = con.prepareStatement("select * from register where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				HttpSession session = request.getSession();
				session.setAttribute("session_name",rs.getString("name"));
				out.print("<script> alert('Login Successful')</script>");
				RequestDispatcher rd = request.getRequestDispatcher("/Home.jsp");
				rd.include(request, response);
				
			}
			else {
				out.print("<script> alert ('Email and password didnt matched') </script>");
				RequestDispatcher rd = request.getRequestDispatcher("/Login.jsp");
				rd.include(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			out.print("<script> alert('"+e.getMessage()+"') </script>");
			RequestDispatcher rd = request.getRequestDispatcher("/Login.jsp");
			rd.include(request, response);
		}
		
		
	}

}
