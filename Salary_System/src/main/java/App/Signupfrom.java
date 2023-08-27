package App;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Signupfrom")
public class Signupfrom extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String  email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String city = request.getParameter("city");
		String password = request.getParameter("Password");
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/user_db","root","admin");
			PreparedStatement ps = con.prepareStatement("insert into register values(?,?,?,?,?)");
			ps.setString(1, username);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.setString(4, gender);
			ps.setString(5, city);
			
			int count = ps.executeUpdate();
			
			if(count>0) {
				out.print("<script> alert('User Signup Successful');</script>");
				RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
				rd.include(request, response);
			}
			else {
				out.print("<script> alert('Incorrect Username or Password');</script>");
				RequestDispatcher rd = request.getRequestDispatcher("SignUp.jsp");
				rd.include(request, response);
				
			}
			
		} catch (Exception e) {
			e.getStackTrace();
			out.print("<script> alert('"+e.getMessage()+"')</script>");
			RequestDispatcher rd = request.getRequestDispatcher("SignUp.jsp");
			rd.include(request, response);
		}
		
	}

}
