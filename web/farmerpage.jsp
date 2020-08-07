<!DOCTYPE html>
<html>
<head>
	<title>farmerpage</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
	<link rel="stylesheet" type="text/css" href="farmerpage.css">
</head>
<body>



<nav class="navbar navbar-expand-lg navbar-light bg-success" id="main-navbar">
  <a class="navbar-brand" href="#" id="willow"><i class="fas fa-tractor"></i><b> Willow-Way</b></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active" id="profile">
        <a class="nav-link" href="#"><i class="fas fa-user-circle"></i> Profile</a>
      </li>
      <li class="nav-item" id="contact">
        <a class="nav-link" href="#"><i class="fas fa-address-book"></i> Contact</a>
      </li>
      

      </li>
    </ul>

    
  </div>
</nav>

<div class="card border-success mb-3" style="max-width: 48rem;" id="card">
  <div class="card-header">Farmer Information</div>
  <div class="card-body text-success">
      <h5 class="card-title"><form action="./serverpage" method="POST">
              <input type="hidden" name="finalsubmit" value="addcrop">
  <div class="form-group">
    <label for="cropname">Crop Name</label>
    <input type="text" class="form-control" id="cropname" aria-describedby="emailHelp" name="cropname">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Current Price</label>
    <input type="text" class="form-control" id="price" name="price">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">My available Stock</label>
    <input type="text" class="form-control" id="price" name="available">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Max amount Eligible for</label>
    <input type="text" class="form-control" id="price" name="max_amount">
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect1">Transportation</label>
    <select class="form-control" id="transporation" name="transportation">
      <option>yes</option>
      <option>no</option>
     
    </select>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
  <button type="clear" class="btn btn-primary">Clear</button>
</form></h5>
  </div>
</div>



<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>