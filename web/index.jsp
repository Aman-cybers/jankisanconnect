<!DOCTYPE html>
<html lang="hi">
    <head>
        <title>Faarmer</title>
        <link rel="stylesheet" type="text/css" href="Farmer.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">


    </head>
    <body>
        <div class="jumbotron jumbotron-fluid" id="jumbotron">
            <div class="container">
                <div class="dropdown">
                    <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"id="dropdown-menu">language</button>
                    <div class="dropdown-menu">
                        <a href="#" class="dropdown-item">English</a>
                        <a href="#" class="dropdown-item" id="hindi">Hindi</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="card border-success mb-3" style="max-width: 18rem;">
                        <div class="card-header"><h5><i class="fas fa-chevron-right"></i> <span id="p1display">Employee Login:</span></h5></div>
                        <div class="card-body text-success">
                            <h5 class="card-title">
                                <div class="btn-emp"><button type="button" class="btn btn-sm btn-outline-success" id="btn-emp" data-toggle="collapse" data-target="#form-emp">Click Here</button></div>
                                <div id="form-emp" class="collapse">
                                    <form>
                                        <label for="fname">Email : </label><br>
                                        <input type="text"  placeholder="Email"><br>
                                        <label for="lname">Password : </label><br>
                                        <input type="text"   placeholder="Pass"><br>
                                        <button type="button" class="btn btn-sm btn-success" id="btn-emp1">Submit</button>
                                    </form> 
                                </div>
                            </h5>
                        </div>

                    </div>

                </div>
                <div class="vl"></div>
                <div class="col">
                    <form action="./serverpage" method="POST">
                        <input type="hidden" name="finalsubmit" value="login">
                       
                        <div class="form-group">
                                    <label for="exampleInputEmail1"><i class="fas fa-hand-point-right"></i><b> Select Login : </b></label>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" id="exampleRadios1" value="farmer" name="radioselect">
                                        <label class="form-check-label" for="exampleRadios1">
                                            Farmer
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" id="exampleRadios2" value="buyur" name="radioselect">
                                        <label class="form-check-label" for="exampleRadios2">
                                            Buyer  </label>
                                    </div>
                                </div>


                        <div class="form-group">
                            <label for="exampleInputEmail1">Username</label>
                            <input type="email" size="10" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="uname">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your username with anyone else.</small>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" name="pass">
                        </div>

                        <button type="submit" class="btn btn-primary" id="loginfb">Login</button>
                    </form><br>

                    <div><h5><i class="fas fa-caret-right"></i> Login with :  <button><i class="fab fa-facebook"></i></button> <button><i class="fab fa-google"></i></button></h5></div><br>

                    <div><h5><a href="registration.jsp"><button type="button" class="btn btn-outline-success">Click here to get register</button></a> Or   <button type="button" class="btn btn-success"><i class="fas fa-envelope"></i></button> <button type="button" class="btn btn-success"><i class="fab fa-whatsapp-square"></i></button> <button type="button" class="btn btn-success"><i class="fab fa-twitter"></i></button> <button type="button" class="btn btn-success"><i class="fab fa-instagram"></i></button></h5></div>

                </div>
            </div>
        </div>





        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        <script type="text/javascript" src="Farmer.js"></script>


    </body>
</html>