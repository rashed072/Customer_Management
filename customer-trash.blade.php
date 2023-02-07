<!doctype html>
<html lang="en">
  <head>
    <title>Customer Trash</title>
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
        <div class="text-right">
    <a href="{{url('/customer')}}" class="btn btn-primary " role="button">Add</a>
    <a href="{{url('/customer/view')}}" class="btn btn-primary " role="button">Customer View</a>
</div>
       <table class="table">
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Gender</th>
                <th>DOB</th>
                <th>Address</th>
                <th>State</th>
                <th>Country</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach($customers as $customer)
            <tr>
                <td>{{$customer->user_name}}</td>
                <td>{{$customer->email}}</td>
                <td>
                    @if($customer->gender=="M")
                    Male
                    @elseif($customer->gender=="F")
                    Female
                    @else
                    Other
                    @endif
                </td>
                <td>{{$customer->dob}}</td>
                <td>{{$customer->address}}</td>
                <td>{{$customer->state}}</td>
                <td>{{$customer->country}}</td>
                <td>
                    @if($customer->status=="1")
                    <a href="" type="button" class="btn btn-success btn-sm">Active</a>
                    @else
                    <a href="" type="button" class="btn btn-danger btn-sm">Inactive</a>
                    @endif
                </td>
                <td>
                <a href="{{route('customer.forceDelete',['id'=>$customer->id])}}" type="button" class="btn btn-danger btn-sm">Delete</a>
                <a href="{{route('customer.restore',['id'=>$customer->id])}}" type="button" class="btn btn-primary btn-sm">Restore</a>
            </td>

            </tr>
            @endforeach
            
            <tr>
                <td scope="row"></td>
                <td></td>
                <td></td>
            </tr>
        </tbody>
       </table>
    </div>
      
</body>
</html>