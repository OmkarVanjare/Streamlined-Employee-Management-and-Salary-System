<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Page | Omkar Arts</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="Index.css">
</head>

<body>
<form action="Signupfrom" method="post">
<div class="container">
        <div class="S-box">
            <div class="row">
                <div class="col-12">
                    <header>
                        <h2>Signup</h2>
                    </header>
                </div>
            </div>
            <div class="row">
                <div class="col-12 S_input">
                    <label for="F_name">User Name</label><br>
                    <input type="text" name="username" size="36">
                </div>
            </div>

            <div class="row">
                <div class="col-12 S_input">
                    <label for="email">Email ID</label><br>
                    <input type="text" name="email" size="36">
                </div>
            </div>
            <div class="row">
                <div class="col-4 S_input">
                    <label for="Gender">Gender</label>
                </div>
                <div class="col-4 S_input">
                    <input type="radio" name="gender" value="male" size="36">Male 
                </div>
                <div class="col-4 S_input">
                    
                    <input type="radio" name="gender" value="female" size="36">Female
                </div>
            </div>
            <div class="row">
                <div class="col-12 S_input">
                    <label for="city">City</label><br>
                    <input type="text" name="city" size="36">
                </div>
            </div>


            
            <div class="row">
                <div class="col-12 S_input">
                    <label for="Password">Password (6 or more charaters)</label><br>
                    <input type="password" name="Password" size="36">
                </div>
            </div>
           <div class="row btn rowbtn">
            <div class="d-grid gap-2 d-md-block">
                <button class="btn btn-primary" type="submit">Signup</button>
            </div>
           </div>
            <p>Already have an account? <a href="Login.jsp">Login</a></p>
        </div>
    </div>
</form>
    
</body>

</html>