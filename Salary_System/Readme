This is a web application that involves user registration, login, and a salary calculation system. The provided code is written in Java and uses servlets for handling HTTP requests and responses. It seems to be a basic web application that allows users to sign up, log in, and calculate their salary based on different parameters.

Here's a breakdown of what each code snippet appears to do:

Signup Page (SignUp.jsp):

This JSP file contains a form where users can enter their registration details like username, email, gender, city, and password.
The form data is submitted to the Signupfrom servlet when the "Signup" button is clicked.
Signup Servlet (Signupfrom.java):

This servlet handles the user registration process.
It reads the user data from the request parameters and inserts it into a MySQL database.
If the insertion is successful, it redirects the user to the login page; otherwise, it displays an error message.
Login Page (Login.jsp):

This JSP file contains a form where users can enter their email and password for login.
The form data is submitted to the LoginForm servlet when the "Login" button is clicked.
Login Servlet (LoginForm.java):

This servlet handles user login.
It retrieves the user's email and password from the request parameters and checks if they match an entry in the database.
If the login is successful, it sets a session attribute and redirects the user to a home page; otherwise, it displays an error message.
Salary Calculation Page (Salary.jsp):

This JSP file displays the salary calculation results for a user.
It retrieves data from session attributes set by the SalaryLogic servlet.
The page displays the user's name, month, salary details, and calculated amounts.
Salary Calculation Logic Servlet (SalaryLogic.java):

This servlet calculates salary details based on the provided monthly salary, number of leaves, month, year, and TDS.
It calculates different components like leave deductions, TDS deductions, final salary, and annual CTC (Cost to Company) based on the provided parameters.
The calculated values are stored in session attributes and then used in the Salary.jsp page.
