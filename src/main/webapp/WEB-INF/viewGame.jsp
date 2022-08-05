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
  <link rel="stylesheet" href="/css/style.css" />
  <!-- For any Bootstrap that uses JS or jQuery-->
  <script src="/webjars/jquery/jquery.min.js"></script>
  <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="/js/script.js"></script>

  <meta charset="UTF-8">
  <title>Insert title here</title>
</head>
    <title>Title</title>
</head>
<body>
  <div class="container">
    <h1>${ game.homeTeam} vs. ${ game.awayTeam}</h1>

    <h5>Starting Pitchers</h5>
    <p>Home: ${game.hStartingPitcher} / ${ player.team.teamName }</p>
    <p>Away: ${game.aStartingPitcher} / ${ player.team.teamName }</p>

      <h5>${ game.homeTeam} Starting Lineup</h5>

      <div class="container">
          <div class="row">
              <div class="col-6">
                  <table class="table">
                      <thead>
                      <tr>
                          <th>${game.homeTeam}</th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr>
                          <td>${game.h1} - ${game.h1p}</td>
                      </tr>
                      <tr>
                          <td>${game.h2} - ${game.h2p}</td>
                      </tr>
                      <tr>
                          <td>${game.h3} - ${game.h3p}</td>
                      </tr>
                      <tr>
                          <td>${game.h4} - ${game.h4p}</td>
                      </tr>
                      <tr>
                          <td>${game.h5} - ${game.h5p}</td>
                      </tr>
                      <tr>
                          <td>${game.h6} - ${game.h6p}</td>
                      </tr>
                      <tr>
                          <td>${game.h7} - ${game.h7p}</td>
                      </tr>
                      <tr>
                          <td>${game.h8} - ${game.h8p}</td>
                      </tr>
                      <tr>
                          <td>${game.h9} - ${game.h9p}</td>
                      </tr>
                      </tbody>
                  </table>
              </div>
              <div class="col-6">
                  <table class="table">
                      <thead>
                      <tr>
                          <th>${game.awayTeam}</th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr>
                          <td>${game.a1} - ${game.a1p}</td>
                      </tr>
                      <tr>
                          <td>${game.a2} - ${game.a2p}</td>
                      </tr>
                      <tr>
                          <td>${game.a3} - ${game.a3p}</td>
                      </tr>
                      <tr>
                          <td>${game.a4} - ${game.a4p}</td>
                      </tr>
                      <tr>
                          <td>${game.a5} - ${game.a5p}</td>
                      </tr>
                      <tr>
                          <td>${game.a6} - ${game.a6p}</td>
                      </tr>
                      <tr>
                          <td>${game.a7} - ${game.a7p}</td>
                      </tr>
                      <tr>
                          <td>${game.a8} - ${game.a8p}</td>
                      </tr>
                      <tr>
                          <td>${game.a9} - ${game.a9p}</td>
                      </tr>
                      </tbody>
                  </table>
              </div>
          </div>
      </div>





<%--      <form:select method="post" path="/assign/${team.id}">--%>
<%--        <select name="teamId" id="teamId">--%>
<%--          <c:forEach items="${ allgames }" var="game">--%>
<%--            <option value="${ team.id }">--%>
<%--              ${ game.homeTeam }--%>
<%--            </option>--%>
<%--          </c:forEach>--%>
<%--        </select>--%>
<%--        <button>Assign Player</button>--%>
<%--      </form:select>--%>

    <%--  <form:select path="team">--%>
    <%--    <c:forEach var = "team" items = "${ allTeams }">--%>
    <%--      <option value="${ team.id }">${ team.teamName }</option>--%>
    <%--    </c:forEach>--%>
    <%--  </form:select>--%>
    <%--<button>Assign Player</button>--%>
  </div>

</body>
</html>
