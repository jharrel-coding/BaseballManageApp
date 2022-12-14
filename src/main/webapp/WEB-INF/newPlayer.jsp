<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- for forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- for validations -->
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>New Player</title>
</head>
<body>
<div class="container">
    <form:form action="/players/create" method="POST" modelAttribute="newPlayer">
    <div class="row">
        <form:label path="jerseyNumber" class="form-label">#</form:label>
        <form:input path="jerseyNumber" class="form-control" type="number"/>
        <form:errors path="jerseyNumber" class="text-danger"/>
    </div>
    <div class="row">
        <form:label path="firstName" class="form-label">First Name</form:label>
        <form:input path="firstName" class="form-control" type="text"/>
        <form:errors path="firstName" class="text-danger"/>
    </div>
    <div class="row">
        <form:label path="lastName" class="form-label">Last Name</form:label>
        <form:input path="lastName" class="form-control" type="text"/>
        <form:errors path="lastName" class="text-danger"/>
    </div>
    <div class="row">
        <form:label path="playerPosition" class="form-label">Position</form:label>
        <form:input path="playerPosition" class="form-control" type="text"/>
        <form:errors path="playerPosition" class="text-danger"/>
    </div>


    <div class="row input-group">

        <form:label class="form-label" path="throwingHand">House Broken</form:label>
        <div class="input-group-text">
            <form:radiobutton class="form-check-input" label="Right"
                              path="throwingHand" value="true"/>

        </div>
        <div class="input-group-text">
            <form:radiobutton class="form-check-input" path="throwingHand"
                              label="Left" value="false"/>
        </div>

        <div class="row input-group">

            <form:label class="form-label" path="hittingHand">Hitting Hand</form:label>
            <div class="input-group-text">
                <form:radiobutton class="form-check-input" label="Right"
                                  path="hittingHand" value="true"/>
            </div>
            <div class="input-group-text">
                <form:radiobutton class="form-check-input" path="hittingHand"
                                  label="Left" value="false"/>
            </div>
            <div class="row input_group">
                <form:select path="team">
                    <c:forEach var="team" items="${ allTeams }">
                        <option value="${ team.id }">${ team.teamName }</option>
                    </c:forEach>
                </form:select>
            </div>

            <input class="btn btn-primary" type="submit" value="Submit"/>
        </div>
        </form:form>
    </div>

</body>
</html>