<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="BTL_WEB_NC.DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Webside thương mại</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Glassy Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link rel="stylesheet" href="public/css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
    <link rel="stylesheet" href="public/css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700" rel="stylesheet">
</head>
<body> 
	<div id="Div1" runat="server">
        <asp:Label ID="lblTime" runat="server" Text=""></asp:Label>
		<form action="Login.aspx" method="post">
			<div class="header-w3l">
				<h1>Hệ thống học tập trực tuyến	</h1>
			</div>
			<div class="main-w3layouts-agileinfo">
				<div class="wthree-form">
					<h2>Đăng nhập hệ thống</h2>
					<div class="form-sub-w3">
						<input type="text" name="Username" placeholder="Tên đăng nhập " value=""/>
					<div class="icon-w3">
						<i class="fa fa-user" aria-hidden="true"></i>
					</div>
					</div>		
					<div class="form-sub-w3">
						<input type="password" name="Password" placeholder="Mật khẩu" value ="" />
					<div class="icon-w3">
						<i class="fa fa-unlock-alt" aria-hidden="true"></i>
					</div>
					</div>
					<div class="clear"></div>
					<div class="submit-agileits">
						<input id="btnLogin" type="submit" value="LOGIN"/>
					</div>
				</div>
			</div>
			<div class="footer">
				<p>&copy; 2017 Glassy Login Form. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
			</div>
		</form>
	</div>
</body>
</html>
