<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="emailClient.Default" %>

<!DOCTYPE html>

<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Email Client</title>
  </head>
  <body>
    <form runat="server">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Email Client</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="Inbox.aspx">Inbox <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Sent</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Archive</a>
      </li>
    </ul>
     
    <input class="mr-sm-2" type="search" placeholder="Search sender" aria-label="Search">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
 
  </div>
</nav>

      
  <div class="form-group">
    <label for="InputEmail1">Email To:</label>
    <input type="email" runat="server" class="form-control" id="InputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
  </div>
  <div class="form-group">
  <label for="InputEmail2">Email From:</label>
    <input type="email" runat="server" class="form-control" id="InputEmail2" aria-describedby="emailHelp" placeholder="Enter email">
  </div>
 <div class="form-group">
  <label for="Inputpassword">Password:</label>
    <input type="password" runat="server" class="form-control" id="Inputpassword" aria-describedby="emailHelp" placeholder="Enter password">
  </div>
  <div class="form-group">
  <label for="SubjectEmail">Subject:</label>
    <input type="text" runat="server" class="form-control" id="SubjectEmail" aria-describedby="emailHelp" placeholder="Subject">
  </div>
  <div class="form-check">
  <label for="Emailmsg">Message:</label>
   <textarea class="form-control" runat="server" id="Emailmsg" rows="3"></textarea>
      <br />
  </div>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="sndbtn_Click"/>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   </form>
  </body>
</html>