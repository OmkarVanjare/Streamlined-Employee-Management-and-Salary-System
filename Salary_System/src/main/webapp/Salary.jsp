<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OmkarArts | Home</title>
</head>
<link rel="stylesheet" href="Index.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap" rel="stylesheet">

<body>
<div class="container">
        <div class="box1 shadow-lg p-3 mb-5 bg-body-tertiary  ">
            <div class="row">
                <div class="col- head">
                    <h1 class="h1" style="font-family: 'Kaushan Script', cursive;;">OMKAR ARTS</h1>        
                </div>
            </div>
            <div class="row">
                <div class="col-h col">
                    Employee Name:-${session_name}
                </div>
                <div class="col-h col">
                    Salary Month:-${Month}
                </div>
                <div class="col-h col">
                    Designation:- Manager
                </div>
            </div>
            <div>
                <table class="table table-success table-striped table-bordered border-dark">
                    <thead>
                      <tr>
                        <th scope="col">Sr No</th>
                        <th scope="col">Particular</th>
                        <th scope="col">Amount </th>
                        
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">1</th>
                        <td>Gross Salary</td>
                        <td>${Monthly_Salary }</td>
                        
                      </tr>
                      <tr>
                        <th scope="row">2</th>
                        <td>Number of Leaves</td>
                        <td>${Leave}</td>
                        
                      </tr>
                      <tr>
                        <th scope="row">3</th>
                        <td>TDS Amount</td>
                        <td>${TDS_Amount}</td>
                        
                      </tr>
                      <tr>
                        <th scope="row">4</th>
                        <td>Net Salary</td>
                        <td>${Final_Salary}</td>
                      </tr>
                      <tr>
                        <th scope="row">5</th>
                        <td>CTC</td>
                        <td>${CTC}</td>
                      </tr>
                    </tbody>
                  </table>
            </div>
            
        </div>
    </div>
</body>
</html>