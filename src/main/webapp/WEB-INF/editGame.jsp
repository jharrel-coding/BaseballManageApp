<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- for forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for validations -->
<%@ page isErrorPage="true"%>



<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <!-- YOUR own local CSS -->
    <link rel="stylesheet" href="/css/style.css"/>
    <!-- For any Bootstrap that uses JS or jQuery-->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type = "text/javascript" src ="/js/script.js"></script>

    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<div class="container">
    <form:form action="/games/${ game.id }/update " method="POST" modelAttribute="editGame">
    <input type="hidden" name="_method" value="put">
    <div class="row">
        <form:label path="homeTeam" class="form-label">Home Team</form:label>
        <form:input path="homeTeam" class="form-control" value="${game.homeTeam}" type = "text"/>
        <form:errors path="homeTeam" class="text-danger" />
    </div>
    <div class="row">
        <form:label path="hStartingPitcher" class="form-label">Home Starting Pitcher</form:label>
        <form:input path="hStartingPitcher" class="form-control" value="${game.hStartingPitcher}" type = "text"/>
        <form:errors path="hStartingPitcher" class="text-danger" />
    </div>
    <div class="row">
        <form:label path="awayTeam" class="form-label">Away Team</form:label>
        <form:input path="awayTeam" class="form-control" value="${game.awayTeam}" type = "text"/>
        <form:errors path="awayTeam" class="text-danger" />
    </div>
    <div class="row">
        <form:label path="aStartingPitcher" class="form-label">Away Starting Pitcher</form:label>
        <form:input path="aStartingPitcher" class="form-control" value="${game.aStartingPitcher}" type = "text"/>
        <form:errors path="aStartingPitcher" class="text-danger" />
    </div>

    <input class = "btn btn-primary" type="submit" value="Submit" />
</div>
</form:form>
</div>
</body>
</html>