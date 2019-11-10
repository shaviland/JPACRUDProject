<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="style.css" rel="stylesheet" type="text/css">
<title>Doctor Who Directory</title>
</head>
<body>
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="/">Doctor Who Database</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active">

					<form action="getEpisode.do" method="GET" id="lookUp">
						Look Up Episode By ID: <input type="text" name="fid"  required="required" /> <input
							type="submit" value="Show Episode"/>
					</form>
				</li>

				<li class="nav-item active" id="createEp">
					<form action="createEpisode.do" method="GET" >
						<input type="submit" class="btn btn-outline-dark"
							value="Add An Episode" />
					</form>
				</li>
				<li class="nav-item active" id="viewEp">

					<form action="viewEpisodes.do" method="GET">
						<input type="submit" class="btn btn-outline-dark"
							value="View Episode List" />
					</form>
				</li>
			</ul>
		</div>
	</nav>


</body>
</html>