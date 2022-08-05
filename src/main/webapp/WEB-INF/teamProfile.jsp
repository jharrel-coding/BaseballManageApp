<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- for forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <h1>${ team.fullTeamName() }'s Details</h1>
    <td><h3>League</h3>
        <c:choose>
            <c:when test="${ team.league == true }">
                American league
            </c:when>
            <c:otherwise>
                National League
            </c:otherwise>
        </c:choose>
    </td>
    <h3>Home Ballpark:</h3>  ${ team.ballpark }
    <h3>Location:</h3> ${ team.city }, ${ team.state}
    <hr>
    <h2>${ team.teamName } Players</h2>
    <table class="table">
        <thead>
            <tr>
                <th>#</th>
                <th>Player Name</th>
                <th>Position</th>
                <th>Hits/Throws</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="player" items="${ team.players }">
                <tr>
                    <td><c:out value="${ player.jerseyNumber }" /></td>
                    <td><c:out value="${ player.fullName() }" /></td>
                    <td><c:out value="${ player.playerPosition }" /></td>
                    <td>
                        <c:choose>
                            <c:when test="${ player.throwingHand == true }">
                                Right
                            </c:when>
                            <c:otherwise>
                                Left
                            </c:otherwise>
                        </c:choose>
                        /
                        <c:choose>
                            <c:when test="${ player.hittingHand == true }">
                                Right
                            </c:when>
                            <c:otherwise>
                                Left
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</div>

</body>
</html>