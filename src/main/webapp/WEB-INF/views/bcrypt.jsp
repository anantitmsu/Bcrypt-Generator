<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>BCrypt Generator</title>

<meta name="keywords" 
         content="Bcrypt password Spring Security BCrypt-Password-generator Password generator Oauth2.0 oauth onlinepasswordgenerator" >
      
<meta  http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="robots" content="index,follow">   
<meta name="description" content="Online Generate and test Bcrypt Password. Bcrypt Password generator.">

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
      <a class="navbar-brand col-md-6"  title="BCrypt Password Generator" href="/">Bcrypt.xyz - Online
			Bcrypt Hash Generator &amp; Checker</a>
			
	<a class="navbar-brand col-md-4" href="about-us" style="text-align : right;"> About Us</a>		
    </div>
  </div>
</nav>

	<div class="container">

		<div class="col-lg-6">

			<form name="foo" action="generate-bcrypt" method="post">

				<div class="col-lg-12">
					<div class="input-group">
						<input type="text" name="plainText" class="form-control"
							placeholder="String to Encrypt..... "> <span
							class="input-group-btn">
							<button class="btn btn-secondary" type="submit">Generate</button>
						</span>
					</div>
				</div>
			</form>

			
			<c:if test="${show == true}">
			<div class="col-lg-12" style="margin-top: 10px;">
				<h4>Hash Generated</h4>

				<div class="alert alert-success">
					<small>Plain Text : ${plainText}</small>
				</div>
				
				<div class="alert alert-success">
					<small>Hashed Text : ${hashedPassword}</small>
				</div>
			</div>
			 </c:if>
		</div>
	<div class="col-lg-6">


		<form name="foo" action="match-bcrypt" method="post">

			<div class="col-lg-12">
				<div class="form-group">
				<input type="text" name="hashedCode" class="form-control"
						placeholder="Hash to Check..."> 
				</div>
				<div class="input-group">
					
					<input type="text" name="plainTextToCheck" class="form-control"
						placeholder="String to Check Against..."> <span class="input-group-btn">
						<button class="btn btn-secondary" type="submit">Match</button>
					</span>
					
					</div>
						<c:if test="${matchShow == true}">
						
			<div  style="margin-top: 10px;">
				<h4>Hash Result</h4>

				<div class="alert alert-success">
					<small>Plain Text : ${plainTextToCheck}</small>
					<small>Hashed Text : ${hashedCode}</small>
				</div>
				<c:if test="${match == true}">
				<div class="alert alert-success">
					<small>Congrats! Hash matched.</small>
				</div>
				</c:if>
				<c:if test="${match == false}">
				<div class="alert alert-danger">
					<small>Oooopss! Hash didn't match.</small>
				</div>
				</c:if>
				
			</div>
			 </c:if>
					
					
					
				</div>
			
		</form>

	</div>

	</div>
</body>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-97062270-1', 'auto');
  ga('send', 'pageview');

</script>
</html>