package App;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/SalaryLogic")
public class SalaryLogic extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		int Monthly_Salary,Leaves,Year,TDS;
		String Month;
		Monthly_Salary =Integer. parseInt(request.getParameter("Monthly_Salary"));
		Leaves = Integer. parseInt(request.getParameter("Leave"));
//		Month=Integer. parseInt(request.getParameter("Month"));
		Month = request.getParameter("Month");		Year=Integer. parseInt(request.getParameter("Year"));
		TDS=Integer. parseInt(request.getParameter("TDS"));
		

		
		if (Month == "January" || Month == "March" || Month == "May" || Month == "July" || Month == "August" || Month == "October" || Month == "December"  ) {
			 int Day = Monthly_Salary / 31;
			 int Leave_Amount = Day * Leaves;
			 int TDS_Amount = (Monthly_Salary*TDS)/100;
			 int Final_salary = Monthly_Salary - Leave_Amount - TDS_Amount;
			 int CTC = Monthly_Salary * 12;
			 
			 HttpSession session = request.getSession();
			 session.setAttribute("Month",Month);
			 session.setAttribute("Monthly_Salary",Monthly_Salary);
			 session.setAttribute("Leave", Leaves);
			 session.setAttribute("TDS_Amount",TDS_Amount);
			 session.setAttribute("Final_Salary",Final_salary);
			 session.setAttribute("CTC",CTC);
			 RequestDispatcher rd = request.getRequestDispatcher("/Salary.jsp");
			 rd.include(request, response);
			  
		 }else {
			 if(Month == "April" || Month == "June" || Month== "September" || Month == "November") {
				 int Day = Monthly_Salary / 30;
				 int Leave_Amount = Day * Leaves;
				 int TDS_Amount = (Monthly_Salary*TDS)/100;
				 int Final_salary = Monthly_Salary - Leave_Amount - TDS_Amount;
				 int CTC = Monthly_Salary * 12;
				 
				 HttpSession session = request.getSession();
				 session.setAttribute("Month",Month);
				 session.setAttribute("Monthly_Salary",Monthly_Salary);
				 session.setAttribute("Leave", Leaves);
				 session.setAttribute("TDS_Amount",TDS_Amount);
				 session.setAttribute("Final_Salary",Final_salary);
				 session.setAttribute("CTC",CTC);
				 RequestDispatcher rd = request.getRequestDispatcher("/Salary.jsp");
				 rd.include(request, response);
//				 out.println("Month"+Month);
//				 out.println("Employee Monthly Salary:-"+Monthly_Salary);
//				 out.println("Leave Amount:-"+Leave_Amount);
//				 out.println("TDS Amount:-"+TDS_Amount);
//				 out.println("Final Salary:-"+Final_salary);
//				 out.println("CTC (Yearly Salary)"+CTC); 
			 }
			 else {
				 if (Month == "February" && Year%4==0) {
					 int Day = Monthly_Salary / 29;
					 int Leave_Amount = Day * Leaves;
					 int TDS_Amount = (Monthly_Salary*TDS)/100;
					 int Final_salary = Monthly_Salary - Leave_Amount - TDS_Amount;
					 int CTC = Monthly_Salary * 12;
					
					 HttpSession session = request.getSession();
					 session.setAttribute("Month",Month);
					 session.setAttribute("Monthly_Salary",Monthly_Salary);
					 session.setAttribute("Leave", Leaves);
					 session.setAttribute("TDS_Amount",TDS_Amount);
					 session.setAttribute("Final_Salary",Final_salary);
					 session.setAttribute("CTC",CTC);
					 RequestDispatcher rd = request.getRequestDispatcher("/Salary.jsp");
					 rd.include(request, response);

				 }
				 else {
					 int Day = Monthly_Salary / 28;
					 int Leave_Amount = Day * Leaves;
					 int TDS_Amount = (Monthly_Salary*TDS)/100;
					 int Final_salary = Monthly_Salary - Leave_Amount - TDS_Amount;
					 int CTC = Monthly_Salary * 12;
					 
					 HttpSession session = request.getSession();
					 session.setAttribute("Month",Month);
					 session.setAttribute("Monthly_Salary",Monthly_Salary);
					 session.setAttribute("Leave", Leaves);
					 session.setAttribute("TDS_Amount",TDS_Amount);
					 session.setAttribute("Final_Salary",Final_salary);
					 session.setAttribute("CTC",CTC);
					 RequestDispatcher rd = request.getRequestDispatcher("/Salary.jsp");

				 }
			 }
		 }
	}

}
