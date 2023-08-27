<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="Index.css">
</head>
<body>
<form action="LoginForm" method="post">
<div class="container">
        <div class="S-box">
            <div class="row">
                <div class="col-12">
                    <header>
                        <h2>Login</h2>
                    </header>
                </div>
            </div>
            <div class="row rowbox">
                <div class="col-12 S_input colbox">
                    <label for="username">Email</label><br>
                    <input type="text" name="email" size="36">
                </div>
                <div class="col-12 S_input colbox">
                    <label for="Password">Password (6 or more charaters)</label><br>
                    <input type="password" name="Password" size="36">
                </div>
            </div>
            
          
           <div class="row">
            <div class="d-grid gap-2 col-6 mx-auto btn">
                
                <button class="btn btn-primary" type="submit">Login</button>
            </div>
           </div>
            
            

            <p>Don't have an account? <a href="SignUp.jsp">Signup</a></p>

        </div>
    </div>
</form>
</body>
</html>