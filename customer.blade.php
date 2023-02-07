<!doctype html>
<html lang="en">
  <head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <ul class="navbar-nav">
  <li class="nav-item">
      <a class="nav-link" href="{{url('/')}}">Index</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="{{url('/customer')}}">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="{{('/register')}}">Register</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="">Customer</a>
  </ul>
</nav>
  <div class="container">
  <form action="{{$url}}" method="post">
    @csrf
      <h2 class="text-center">
        {{$title}}
    </h2>
    <div class="row">
    <div class="col mod-6 form-group required">
      <label>Name:</label>
      <input type="text" class="form-control" id="name" name="name">
      <span>
        @error('name')
        {{$message}}
        @enderror
</span>
    </div>
    <div class="col mod-6 form-group">
      <label>Email:</label>
      <input type="email" class="form-control" name="email"  required>
    </div>
  </div>
    <div class="row">
    <div class="col mod-6 form-group">
      <label>Password:</label>
      <input type="password" class="form-control" id="name" name="password" required>
    </div>
    <div class="col mod-6 form-group">
      <label>Confirm Password:</label>
      <input type="password" class="form-control" name="password" required>
    </div>
  </div>
  <div class="row">
    <div class="col mod-6 form-group">
      <label>Country:</label>
      <input type="text" class="form-control" id="name" name="country" >
    </div>
    <div class="col mod-6 form-group">
      <label>State:</label>
      <input type="text" class="form-control" name="state" >
    </div>
  </div>
  <div class="form-group">
      <label for="comment">Address:</label>
      <textarea class="form-control" rows="2" id="comment" name="address" value=""></textarea>
    </div>
    <div class="row">
    <div class="col mod-6 form-group">
    <label for="comment">Gender:</label><br>
    <div class="form-check-inline form-group">
      <label class="form-check-label mr-2" for="male">Male</label>
        <input type="radio" class="form-check-input" id="male" name="gender" value="M">
    </div>
    <div class="form-check-inline">
      <label class="form-check-label mr-2" for="female">Female</label>
        <input type="radio" class="form-check-input" id="female" name="gender" value="F" >
    </div>
    <div class="form-check-inline">
      <label class="form-check-label mr-2"  for="other">Other</label>
        <input type="radio" class="form-check-input"  name="gender" value="O">
    </div>
</div>
<div class="col mod-6 form-group">
<label for="comment">Date:</label>
<input type="date" class="form-control" name="dob" >
</div>
</div>
  <button type="submit" class="btn btn-primary btn-block">Submit</button>
  </form>
</div>
</body>
</html>