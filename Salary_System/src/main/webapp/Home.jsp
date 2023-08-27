<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Salary</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="Index.css">
<body>
<form action="SalaryLogic" method="post">
<div class="container">
        <div class="salary-box shadow-lg p-3 mb-5 bg-body-tertiary ">
            <div class="salary-row">
                <div class="col">
                    <h1>Salary System</h1>
                </div>
            </div>
            <div class="salary-row">
                <div class="col">
                    <table>
                        <tbody>
                            <tr>
                                <td class="s-td"><label for="Salary">Monthly Salary</label></td>
                                <td class="s-td"><input type="text" size="30" name="Monthly_Salary" placeholder="Enter Salary"></td>
                            </tr>
                            <tr>
                                <td class="s-td"><label for="Leaves">Leaves</label> </td>
                                <td class="s-td"><input type="text" size="30" name="Leave" placeholder="Enter Number of leaves"></td>
                            </tr>
                            <tr>
                                <td class="s-td"><label for="Month">Month</label> </td>
                                <td class="s-td"><select name="Month" id="">
                                        <option value="">---Select Month---</option>
                                        <option value="January">January</option>
                                        <option value="February">February</option>
                                        <option value="March">March</option>
                                        <option value="April">April</option>
                                        <option value="May">May</option>
                                        <option value="June">June</option>
                                        <option value="July">July</option>
                                        <option value="August">August</option>
                                        <option value="September">September</option>
                                        <option value="October">October</option>
                                        <option value="November">November</option>
                                        <option value="December">December</option>
                                    </select></td>
                            </tr>
                            <tr>
                                <td class="s-td"><label for="Year">Year</label> </td>
                                <td class="s-td"><input type="text" size="30" name="Year" placeholder="Enter Year"></td>
                            </tr>
                            <tr>
                                <td class="s-td"><label for="TDS">TDS</label> </td>
                                <td class="s-td"><input type="text" size="30" name="TDS" placeholder="Enter TDS"></td>
                            </tr>
                    </table>
                </div>
                <div class="salary-row">
                    <div class="d-grid gap-2 col-6 mx-auto btn">

                        <button class="btn btn-primary" type="submit">Submit</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

</form>
    
</body>
</html>