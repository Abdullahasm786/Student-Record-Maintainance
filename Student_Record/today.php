<!Doctype HTML>
	<html>
	<head>
		<title>something new</title>
    <style>
        body{
	margin:0px;
	padding: 0px;
	background-color:black;
	overflow: hidden;
	font-family: system-ui;
}
.clearfix{
	clear: both;
}
.logo{
	margin: 0px;
	margin-left: 28px;
    font-weight: bold;
    color: white;
    margin-bottom: 30px;
}
.logo span{
	color: #f7403b;
}
.sidenav {
  height: 100%;
  width: 300px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: grey;
  overflow: hidden;
  transition: 0.5s;
  padding-top: 30px;
}
.sidenav a {
  padding: 15px 8px 15px 32px;
  text-decoration: none;
  font-size: 20px;
  color: white;
  display: block;
  transition: 0.3s;
}
.sidenav a:hover {
  color: yellow;
  background-color:red;
}
.sidenav{
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
}
#main {
  transition: margin-left .5s;
  padding: 16px;
  margin-left: 300px;
}
.head{
	padding:20px;
}
.col-div-6{
	width: 50%;
	float: left;
}
    </style>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
	<body>
		
		<div id="mySidenav" class="sidenav">
		<p class="logo"><span>M</span>-SoftTech</p>
	  <a href="#" class="icon-a"><i class="fa fa-dashboard icons"></i>   Dashboard Dashboard</a>
	  <a href="#"class="icon-a"><i class="fa fa-users icons"></i>   Customers</a>
	  <a href="#"class="icon-a"><i class="fa fa-list icons"></i>   Projects</a>
	  <a href="#"class="icon-a"><i class="fa fa-shopping-bag icons"></i>   Orders</a>
	  <a href="#"class="icon-a"><i class="fa fa-tasks icons"></i>   Inventory</a>
	  <a href="#"class="icon-a"><i class="fa fa-user icons"></i>   Accounts</a>
	  <a href="#"class="icon-a"><i class="fa fa-list-alt icons"></i>   Tasks</a>

	</div>
	<div id="main">

		<div class="head">
			<div class="col-div-6">
	<span style="font-size:30px;cursor:pointer; color: white;" class="nav"  >☰ Dashboard</span>
	</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>

	  $(".nav").click(function(){
	    $("#mySidenav").css('width','70px');
	    $("#main").css('margin-left','70px');
	    $(".logo").css('visibility', 'hidden');
	    $(".logo span").css('visibility', 'visible');
	     $(".logo span").css('margin-left', '-10px');
	     $(".icon-a").css('visibility', 'hidden');
	     $(".icons").css('visibility', 'visible');
	     $(".icons").css('margin-left', '-8px');
	      $(".nav").css('display','none');
	      $(".nav2").css('display','block');
	  });

	$(".nav2").click(function(){
	    $("#mySidenav").css('width','300px');
	    $("#main").css('margin-left','300px');
	    $(".logo").css('visibility', 'visible');
	     $(".icon-a").css('visibility', 'visible');
	     $(".icons").css('visibility', 'visible');
	     $(".nav").css('display','block');
	      $(".nav2").css('display','none');
	 });

	</script>
    </body>
	</html>