<!DOCTYPE html>
<html>
    <head>
        <title>registration</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="registration.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">

    </head>
    <body>

        <div class="container">
            <div class="card border-success mb-3" style="max-width: 48rem;" id="card">
                <div class="card-header">Header</div>
                <div class="card-body text-success">
                    <h5 class="card-title"><div class="container">
                            <form action="./serverpage" method="POST">
                                <input type="hidden" name="finalsubmit" value="registration">
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
                                    <label for="exampleInputEmail1"><i class="fas fa-hand-point-right"></i><b> First Name</b></label>
                                    <input type="firstname" name="firstname" class="form-control" id="firstname" aria-describedby="emailHelp" placeholder="first name">
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1"><i class="fas fa-hand-point-right"></i><b> Last Name</b></label>
                                    <input type="lastname" class="form-control" id="lastname" aria-describedby="emailHelp" placeholder="last name" name="lastname">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1"><i class="fas fa-hand-point-right"></i><b> Username</b></label>
                                    <input type="username" class="form-control" id="lastname" placeholder="Username" name="username">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1"><i class="fas fa-hand-point-right"></i><b> Password</b></label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="password" name="password">
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1"><i class="fas fa-hand-point-right"></i><b> Phone Number</b></label>
                                    <input type="number" class="form-control" id="number" placeholder="Phone number" name="number">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1"><i class="fas fa-hand-point-right"></i><b> Select Gender</b></label>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" id="exampleRadios1" value="male" name="radio">
                                        <label class="form-check-label" for="exampleRadios1">
                                            Male
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" id="exampleRadios2" value="female" name="radio">
                                        <label class="form-check-label" for="exampleRadios2">
                                            Female  </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1"><i class="fas fa-hand-point-right"></i><b> State</b></label>    <select class="form-control" id="transporation" name="state">
                                        <option>Lohegoan</option>
                                        <option>beawar</option>
                                        <option>Pune Airport</option>
                                        <option>Nikol</option>
                                        <option>Viman Nagar</option>
                                        <option>yerwada</option>


                                    </select>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1"><i class="fas fa-hand-point-right"></i><b> Address</b></label>
                                        <input type="text" class="form-control" id="address" placeholder="address" name="address">
                                    </div>






                                    <button type="submit" class="btn btn-primary" id="submit">Submit</button>
                                    <button type="reset" class="btn btn-primary" id="reset">Reset</button>
                                </div>
                            </form>

                        </div>
                    </h5>
                </div>
            </div>
        </div>



        <script type="text/javascript" src="registration.js"></script>
    </body>
</html>

