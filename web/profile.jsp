<!DOCTYPE html>
<html>
    <head>
        <title>profile</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
        <link rel="stylesheet" type="text/css" href="profile.css">
    </head>
    <body>
        <input type="hidden" name="finalsubmit" value="profile">
        <nav class="navbar navbar-expand-lg navbar-light bg-success" id="main-navbar">
            <a class="navbar-brand" href="#" id="willow"><i class="fas fa-tractor"></i><b> Jan Kisan Connect</b></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>



            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">

                    <li class="nav-item" id="contact">
                        <a class="nav-link" href="#"><i class="fas fa-address-book"></i> Contact</a>
                    </li>


                    </li>
                </ul>


            </div>
        </nav>

        <div class="row">
            <div class="col-2">
                <button type="button" class="btn btn-primary btn-lg btn-block">Account Setting</button>
                <button type="button" class="btn btn-primary btn-lg btn-block">Profile Setting</button>
                <button type="button" class="btn btn-primary btn-lg btn-block">Change Address</button>
                <button type="button" class="btn btn-primary btn-lg btn-block">Rate us</button>

            </div>
            <div class="col">
                <%@ page import ="datachecker.*" %>
                <%@ page import ="java.sql.*" %>

                <%
                    
                     String h = application.getAttribute("user_email").toString();
                        ResultSet rs = dao.getProfileData(h);
                    while(rs.next()){
                %>
                <div class="card border-success mb-3" style="max-width: 65rem;" id="card">
                    <div class="card-header"><h3> Profile</h3></div>
                    <div class="card-body text-success">
                        <h5 class="card-title">Username :  </h5>
                        <input type="username" class="form-control" id="email" name="email" value="<%=rs.getString("username") %>"><br>
                        <h5 class="card-title">First Name : </h5>
                        <input type="username" class="form-control" id="name" name="name" value="<%=rs.getString("firstname") %>"><br>
                        <h5 class="card-title"> Last Name : </h5>
                        <input type="username" class="form-control" id="name" name="name" value="<%=rs.getString("lastname") %>"><br>
                        <h5 class="card-title">Number : </h5>
                        <input type="number" class="form-control" id="number" name="number" value="<%=rs.getString("number") %>"><br>
                        <h5 class="card-title">Address : </h5>
                        <input type="username" class="form-control" id="address" name="address" value="<%=rs.getString("address") %>"><br>
                        <h5 class="card-title">password : </h5>
                        <input type="password" class="form-control" id="cpassword" name="cpassword" value="<%=rs.getString("password") %>"><br>

                    </div><%
                    }
                    %>
                </div>
            </div>
        </div>




        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>