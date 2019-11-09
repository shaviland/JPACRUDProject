<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Episode Creation</title>
</head>
<body>
	<form:form action="createdEpisode.do" method="POST" modelAttribute="episode">
	
		<form:label path="title">Title:</form:label>
		<form:input path="title" required="required" />
		<form:errors path="title" />
		<br />
		<form:label path="era">Era:</form:label>
		<form:select path="era">
			<option value="classic">Classic</option>
			<option value="revived">Revived</option>
		</form:select>
		<form:errors path="era" />
		<br />
		<form:label path="season">Season: </form:label>
		<form:input path="season" min="1" type="number" required="required" />
		<form:errors path="season" />
		<br />
		<form:label path="episodeNum">Episode Number: </form:label>
		<form:input path="episodeNum" min="1" type="number"
			required="required" />
		<form:errors path="episodeNum" />
		<br />
		<form:label path="doctor">Doctor: </form:label>
		<form:input path="doctor" required="required" />
		<form:errors path="doctor" />
		<br />
		<form:label path="villain">Villain: </form:label>
		<form:input path="villain" />
		<form:errors path="villain" />
		<br />
		<form:label path="planet">Planet: </form:label>
		<form:input path="planet" />
		<form:errors path="planet" />
		<br />
		<form:label path="yearSet">Set in: </form:label>
		<form:input path="yearSet" />
		<form:errors path="yearSet" />
		<br />
		<form:label path="description">description:</form:label>
		<form:input path="description" required="required" />
		<form:errors path="description" />
		<br />


		<input type="submit" class="btn btn-outline-light"
			value="Create episode" />
	</form:form>
	<form action="index" method="GET">
		<input type="submit" class="btn btn-outline-light"
			value="Return to Home Page" />
	</form>
</body>
</html>