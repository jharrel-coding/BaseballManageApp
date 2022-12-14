<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- for forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for validations -->
<%@ page isErrorPage="true"%>
<html>
<head>
    <title>New Team</title>
</head>
<body>
    <div class="container">
        <form:form action="/teams/create" method="POST" modelAttribute="newTeam">
            <div class="row">
                <form:label path="teamName" class="form-label">Team Name</form:label>
                <form:input path="teamName" class="form-control" type = "text"/>
                <form:errors path="teamName" class="text-danger" />
            </div>

            <div class="row input-group">

                <form:label class="form-label" path="league">Leage</form:label>
                    <div class="input-group-text">
                        <form:radiobutton class="form-check-input" label="American League"
                                          path="league" value="true" />
            </div>

            <div class="input-group-text">
                <form:radiobutton class="form-check-input" path="league"
                                          label="National League" value="false" />
            </div>


            <div class="row">
                <form:label path="ballpark" class="form-label">Ballpark</form:label>
                <form:input path="ballpark" class="form-control" type = "text"/>
                <form:errors path="ballpark" class="text-danger" />
            </div>

            <div class="row">
                <form:label path="city" class="form-label">City</form:label>
                <form:input path="city" class="form-control" type = "text"/>
                <form:errors path="city" class="text-danger" />
            </div>
            <div class="row">
                <form:label path="state" class="form-label">State</form:label>
                <form:input path="state" class="form-control" type = "text"/>
                <form:errors path="state" class="text-danger" />
            </div>
                <input class = "btn btn-primary" type="submit" value="Submit" />
            </div>
        </form:form>
    </div>
</body>
</html>