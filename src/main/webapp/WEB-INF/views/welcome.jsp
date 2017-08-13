<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>BCrypt Generator</title>

<meta name="keywords"
	content="Bcrypt password Spring Security BCrypt-Password-generator Password generator Oauth2.0 oauth onlinepasswordgenerator">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="robots" content="index,follow">
<meta name="description"
	content="Online Generate and test Bcrypt Password. Bcrypt Password generator.">

<link rel='stylesheet' href='<c:url value="/resources/css/style.css" />'
	type='text/css' media='all' />

<link rel='stylesheet'
	href='<c:url value="/resources/css/bootstrap.min.css" />'
	type='text/css' media='all' />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<style>
body {
	padding-top: 15rem;
}
</style>
</head>
<body>


	<nav class="navbar navbar-fixed-top navbar-dark bg-inverse">
		<div class="container-fluid">
			<div class="navbar-header col-md-12">
				<a class="navbar-brand col-md-6" title="BCrypt Password Generator"
					href="/">Bcrypt.xyz - Online Bcrypt Hash Generator
					&amp; Checker</a> <a class="navbar-brand col-md-4" href="about-us"
					style="text-align: right;"> About Us</a>
			</div>
		</div>
	</nav>

	<div class="container">

		<div class="col-lg-12">

			<h2>Welcome to BCrypt Generator and Verifier</h2>

			<p>App Information : This application is to generate BCrypt Hash
				from plain text and to verify existing hash with plain text.</p>
			<p>App Version : V.1.0</p>
			<p>Author : ${author}</p>
		</div>


	</div>
</body>
</html>