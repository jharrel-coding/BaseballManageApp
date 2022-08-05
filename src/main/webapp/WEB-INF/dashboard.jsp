<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- for forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for validations -->
<%@ page isErrorPage="true"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <!-- YOUR own local CSS -->
    <link rel="stylesheet" href="/css/style.css" />
    <!-- For any Bootstrap that uses JS or jQuery-->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/script.js"></script>

    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
    <%--  PLAYERS  --%>
    <section>
        <div class="container">
            <h2>All Players</h2>
            <a href="/players/new">Add a New Player</a>
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Name</th>
                    <th>Position</th>
                    <th>Throws/Hits</th>
                    <th>Team</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${ allPlayers }" var="player">
                    <tr>
                        <td>${ player.jerseyNumber }</td>
                        <td>${ player.fullName() }</td>
                        <td>${ player.playerPosition }</td>
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
                        <td>${ player.team.teamName }</td>
                        <td><a href= "/players/${ player.id }">View</a> | <a href="/players/${ player.id }/edit">Edit</a> |
                            <form action="/players/${ player.id }/destroy" method = "POST">
                                <input type="hidden" name="_method" value="delete">
                                <input type="submit" value="Delete" /></form>
                        </td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>
    </section>

    <%--  TEAMS  --%>
    <section>
        <div class="container">
            <h2>All Teams</h2>
            <a href="/teams/new">Add a New Team</a>
            <table class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>Team Name</th>
                        <th>League</th>
                        <th>Ballpark</th>
                        <th>City, State</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${ allTeams }" var="team">
                        <tr>
                            <td>${ team.teamName }</td>
                            <td>
                                <c:choose>
                                    <c:when test="${ team.league == true }">
                                        American League
                                    </c:when>
                                    <c:otherwise>
                                        National League
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td>${ team.ballpark }</td>
                            <td>${ team.city }, ${ team.state }</td>
                            <td><a href= "/teams/${ team.id }">View</a> | <a href="/teams/${ team.id }/edit">Edit</a> |
                                <form action="/teams/${ team.id }/destroy" method = "POST">
                                    <input type="hidden" name="_method" value="delete">
                                    <input type="submit" value="Delete" /></form>
                            </td>
                        </tr>
                    </c:forEach>

                </tbody>
            </table>
        </div>
    </section>

    <%--  GAMES  --%>
    <section>
        <div class="container">
            <h2>All Games</h2>
            <a href="/games/new">Schedule A New Game</a>
            <table class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>Date</th>
                        <th>Opponents</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${ allGames }" var="game">
                        <tr>
                            <td><fmt:formatDate pattern = "MMMM dd" value = "${ game.gameDate }" /></td>
                            <td>${ game.homeTeam } vs. ${ game.awayTeam }</td>
<%--                    <c:forEach items="${ allTeams }" var="team">--%>
<%--                        <td>${ team.ballpark }</td>--%>
<%--                    </c:forEach>--%>
                            <td><a href= "/games/${ game.id }">View</a> | <a href="/games/${ game.id }/edit">Edit</a> |
                                <form action="/games/${ game.id }/destroy" method = "POST">
                                    <input type="hidden" name="_method" value="delete">
                                    <input type="submit" value="Delete" /></form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </section>
</body>
</html>