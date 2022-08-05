<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- for forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- for validations -->
<%@ page isErrorPage="true" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ page import="java.util.*" %>

<html>
<head>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous"
    >

    <title>Title</title>
</head>
<body>
<form:form action="/games/create" method="POST" modelAttribute="newGame">
<section>
    <div class="d-flex justify-content-center">
        <h1>Games/Ballpark</h1>
    </div>
</section>


<section>

    <div class="d-flex justify-content-center">
        <div class="row">
            <div class="col">
                <form:label path="gameDate" class="form-label">Game Date</form:label>
                <form:input path="gameDate" class="form-control" type = "date"/>
                <form:errors path="gameDate" class="text-danger" />
            </div>

            <div class="col">
                <form:label path="ballpark">Ballpark</form:label>
                <form:select path="ballpark" class="form-control">
                    <c:forEach var="team" items="${ allTeams }">
                        <option value="${ team.ballpark }">
                                ${ team.ballpark }
                        </option>
                    </c:forEach>
                </form:select>



            </div>
        </div>
    </div>
</section>

<hr>

<div>
    <div class="container">
        <div class="container">
            <div class="row">
                <div class="col-6">
                    <div>
                        <form:label path="homeTeam">Home Team</form:label>
                        <form:select path="homeTeam" class="form-control">
                            <c:forEach var="team" items="${ allTeams }">
                                <option value="${ team.fullTeamName() }">
                                        ${ team.fullTeamName() }
                                </option>
                            </c:forEach>
                        </form:select>
                    </div>
                </div>


                <div class="col-6">
                    <div>
                        <form:label path="awayTeam">Away Team</form:label>
                        <form:select path="awayTeam" class="form-control">
                            <c:forEach var="team" items="${ allTeams }">
                                <option value="${ team.fullTeamName() }">
                                        ${ team.fullTeamName() }
                                </option>
                            </c:forEach>
                        </form:select>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-4">

                <div>
                    <div>
                        <form:label path="h1">1: </form:label>
                        <form:select path="h1" class="form-control">
                            <c:forEach var="player" items="${ allPlayers }">
                                <option value="${ player.fullName() }">
                                        ${ player.fullName() } ( ${ player.playerPosition}
                                    / ${ player.team.fullTeamName() } )
                                </option>
                            </c:forEach>
                        </form:select>
                    </div>
                </div>
                <div>
                    <div>
                        <form:label path="homeTeam">2: </form:label>
                        <form:select path="h2" class="form-control">
                            <c:forEach var="player" items="${ allPlayers }">
                                <option value="${ player.fullName() }">
                                        ${ player.fullName() } ( ${ player.playerPosition}
                                    / ${ player.team.fullTeamName() } )
                                </option>
                            </c:forEach>
                        </form:select>
                    </div>
                </div>
                <div>
                    <div>
                        <form:label path="homeTeam">3: </form:label>
                        <form:select path="h3" class="form-control">
                            <c:forEach var="player" items="${ allPlayers }">
                                <option value="${ player.fullName() }">
                                        ${ player.fullName() } ( ${ player.playerPosition}
                                    / ${ player.team.fullTeamName() } )
                                </option>
                            </c:forEach>
                        </form:select>
                    </div>
                </div>
                <div>
                    <div>
                        <form:label path="homeTeam">4: </form:label>
                        <form:select path="h4" class="form-control">
                            <c:forEach var="player" items="${ allPlayers }">
                                <option value="${ player.fullName() }">
                                        ${ player.fullName() } ( ${ player.playerPosition}
                                    / ${ player.team.fullTeamName() } )
                                </option>
                            </c:forEach>
                        </form:select>
                    </div>
                </div>
                <div>
                    <div>
                        <form:label path="homeTeam">5: </form:label>
                        <form:select path="h5" class="form-control">
                            <c:forEach var="player" items="${ allPlayers }">
                                <option value="${ player.fullName() }">
                                        ${ player.fullName() } ( ${ player.playerPosition}
                                    / ${ player.team.fullTeamName() } )
                                </option>
                            </c:forEach>
                        </form:select>
                    </div>
                </div>
                <div>
                    <div>
                        <form:label path="homeTeam">6: </form:label>
                        <form:select path="h6" class="form-control">
                            <c:forEach var="player" items="${ allPlayers }">
                                <option value="${ player.fullName() }">
                                        ${ player.fullName() } ( ${ player.playerPosition}
                                    / ${ player.team.fullTeamName() } )
                                </option>
                            </c:forEach>
                        </form:select>
                    </div>
                </div>
                <div>
                    <div>
                        <form:label path="homeTeam">7: </form:label>
                        <form:select path="h7" class="form-control">
                            <c:forEach var="player" items="${ allPlayers }">
                                <option value="${ player.fullName() }">
                                        ${ player.fullName() } ( ${ player.playerPosition}
                                    / ${ player.team.fullTeamName() } )
                                </option>
                            </c:forEach>
                        </form:select>
                    </div>
                </div>
                <div>
                    <div>
                        <form:label path="homeTeam">8: </form:label>
                        <form:select path="h8" class="form-control">
                            <c:forEach var="player" items="${ allPlayers }">
                                <option value="${ player.fullName() }">
                                        ${ player.fullName() } ( ${ player.playerPosition}
                                    / ${ player.team.fullTeamName() } )
                                </option>
                            </c:forEach>
                        </form:select>
                    </div>
                </div>
                <div>
                    <div>
                        <form:label path="h9">9: </form:label>
                        <form:select path="h9" class="form-control">
                            <c:forEach var="player" items="${ allPlayers }">
                                <option value="${ player.fullName() }">
                                        ${ player.fullName() } ( ${ player.playerPosition}
                                    / ${ player.team.fullTeamName() } )
                                </option>
                            </c:forEach>
                        </form:select>
                    </div>
                </div>

                <hr>

                <div>
                    <form:label path="hStartingPitcher">Home Starting Pitcher</form:label>
                    <form:select path="hStartingPitcher" class="form-control">
                        <c:forEach var="player" items="${ allPlayers }">
                            <option value="${ player.fullName() }">
                                    ${ player.fullName() } (${ player.playerPosition })
                            </option>
                        </c:forEach>
                    </form:select>
                </div>
            </div>


                <%-- PLAYERS POSITIONS    --%>
            <div class="col-2">
                <div>
                    <form:label path="h1p">Position</form:label>
                    <form:select path="h1p" class="form-control">
                        <option value="Catcher">
                            Catcher
                        </option>
                        <option value="First Base">
                            First Base
                        </option>
                        <option value="Second Base">
                            Second Base
                        </option>
                        <option value="Third Base">
                            Third Base
                        </option>
                        <option value="Shortstop">
                            Shortstop
                        </option>
                        <option value="Left Field">
                            Left Field
                        </option>
                        <option value="Center Field">
                            Center Field
                        </option>
                        <option value="Right Field">
                            Right Field
                        </option>
                        <option value="Designated Hitter">
                            Designated Hitter
                        </option>
                    </form:select>
                </div>

                <div>
                    <form:label path="h2p">Position</form:label>
                    <form:select path="h2p" class="form-control">
                        <option value="Catcher">
                            Catcher
                        </option>
                        <option value="First Base">
                            First Base
                        </option>
                        <option value="Second Base">
                            Second Base
                        </option>
                        <option value="Third Base">
                            Third Base
                        </option>
                        <option value="Shortstop">
                            Shortstop
                        </option>
                        <option value="Left Field">
                            Left Field
                        </option>
                        <option value="Center Field">
                            Center Field
                        </option>
                        <option value="Right Field">
                            Right Field
                        </option>
                        <option value="Designated Hitter">
                            Designated Hitter
                        </option>
                    </form:select>
                </div>

                <div>
                    <form:label path="h3p">Position</form:label>
                    <form:select path="h3p" class="form-control">
                        <option value="Catcher">
                            Catcher
                        </option>
                        <option value="First Base">
                            First Base
                        </option>
                        <option value="Second Base">
                            Second Base
                        </option>
                        <option value="Third Base">
                            Third Base
                        </option>
                        <option value="Shortstop">
                            Shortstop
                        </option>
                        <option value="Left Field">
                            Left Field
                        </option>
                        <option value="Center Field">
                            Center Field
                        </option>
                        <option value="Right Field">
                            Right Field
                        </option>
                        <option value="Designated Hitter">
                            Designated Hitter
                        </option>
                    </form:select>
                </div>

                <div>
                    <form:label path="h4p">Position</form:label>
                    <form:select path="h4p" class="form-control">
                        <option value="Catcher">
                            Catcher
                        </option>
                        <option value="First Base">
                            First Base
                        </option>
                        <option value="Second Base">
                            Second Base
                        </option>
                        <option value="Third Base">
                            Third Base
                        </option>
                        <option value="Shortstop">
                            Shortstop
                        </option>
                        <option value="Left Field">
                            Left Field
                        </option>
                        <option value="Center Field">
                            Center Field
                        </option>
                        <option value="Right Field">
                            Right Field
                        </option>
                        <option value="Designated Hitter">
                            Designated Hitter
                        </option>
                    </form:select>
                </div>

                <div>
                    <form:label path="h5p">Position</form:label>
                    <form:select path="h5p" class="form-control">
                        <option value="Catcher">
                            Catcher
                        </option>
                        <option value="First Base">
                            First Base
                        </option>
                        <option value="Second Base">
                            Second Base
                        </option>
                        <option value="Third Base">
                            Third Base
                        </option>
                        <option value="Shortstop">
                            Shortstop
                        </option>
                        <option value="Left Field">
                            Left Field
                        </option>
                        <option value="Center Field">
                            Center Field
                        </option>
                        <option value="Right Field">
                            Right Field
                        </option>
                        <option value="Designated Hitter">
                            Designated Hitter
                        </option>
                    </form:select>
                </div>

                <div>
                    <form:label path="h6p">Position</form:label>
                    <form:select path="h6p" class="form-control">
                        <option value="Catcher">
                            Catcher
                        </option>
                        <option value="First Base">
                            First Base
                        </option>
                        <option value="Second Base">
                            Second Base
                        </option>
                        <option value="Third Base">
                            Third Base
                        </option>
                        <option value="Shortstop">
                            Shortstop
                        </option>
                        <option value="Left Field">
                            Left Field
                        </option>
                        <option value="Center Field">
                            Center Field
                        </option>
                        <option value="Right Field">
                            Right Field
                        </option>
                        <option value="Designated Hitter">
                            Designated Hitter
                        </option>
                    </form:select>
                </div>

                <div>
                    <form:label path="h7p">Position</form:label>
                    <form:select path="h7p" class="form-control">
                        <option value="Catcher">
                            Catcher
                        </option>
                        <option value="First Base">
                            First Base
                        </option>
                        <option value="Second Base">
                            Second Base
                        </option>
                        <option value="Third Base">
                            Third Base
                        </option>
                        <option value="Shortstop">
                            Shortstop
                        </option>
                        <option value="Left Field">
                            Left Field
                        </option>
                        <option value="Center Field">
                            Center Field
                        </option>
                        <option value="Right Field">
                            Right Field
                        </option>
                        <option value="Designated Hitter">
                            Designated Hitter
                        </option>
                    </form:select>
                </div>

                <div>
                    <form:label path="h8p">Position</form:label>
                    <form:select path="h8p" class="form-control">
                        <option value="Catcher">
                            Catcher
                        </option>
                        <option value="First Base">
                            First Base
                        </option>
                        <option value="Second Base">
                            Second Base
                        </option>
                        <option value="Third Base">
                            Third Base
                        </option>
                        <option value="Shortstop">
                            Shortstop
                        </option>
                        <option value="Left Field">
                            Left Field
                        </option>
                        <option value="Center Field">
                            Center Field
                        </option>
                        <option value="Right Field">
                            Right Field
                        </option>
                        <option value="Designated Hitter">
                            Designated Hitter
                        </option>
                    </form:select>
                </div>

                <div>
                    <form:label path="h9p">Position</form:label>
                    <form:select path="h9p" class="form-control">
                        <option value="Catcher">
                            Catcher
                        </option>
                        <option value="First Base">
                            First Base
                        </option>
                        <option value="Second Base">
                            Second Base
                        </option>
                        <option value="Third Base">
                            Third Base
                        </option>
                        <option value="Shortstop">
                            Shortstop
                        </option>
                        <option value="Left Field">
                            Left Field
                        </option>
                        <option value="Center Field">
                            Center Field
                        </option>
                        <option value="Right Field">
                            Right Field
                        </option>
                        <option value="Designated Hitter">
                            Designated Hitter
                        </option>
                    </form:select>
                </div>
            </div>


            <div class="col-4">
                <div>
                    <div>
                        <form:label path="a1">1: </form:label>
                        <form:select path="a1" class="form-control">
                            <c:forEach var="player" items="${ allPlayers }">
                                <option value="${ player.fullName() }">
                                        ${ player.fullName() } ( ${ player.playerPosition}
                                    / ${ player.team.fullTeamName() } )
                                </option>
                            </c:forEach>
                        </form:select>
                    </div>
                </div>
                <div>
                    <div>
                        <form:label path="a2">2: </form:label>
                        <form:select path="a2" class="form-control">
                            <c:forEach var="player" items="${ allPlayers }">
                                <option value="${ player.fullName() }">
                                        ${ player.fullName() } ( ${ player.playerPosition}
                                    / ${ player.team.fullTeamName() } )
                                </option>
                            </c:forEach>
                        </form:select>
                    </div>
                </div>
                <div>
                    <div>
                        <form:label path="a3">3: </form:label>
                        <form:select path="a3" class="form-control">
                            <c:forEach var="player" items="${ allPlayers }">
                                <option value="${ player.fullName() }">
                                        ${ player.fullName() } ( ${ player.playerPosition}
                                    / ${ player.team.fullTeamName() } )
                                </option>
                            </c:forEach>
                        </form:select>
                    </div>
                </div>
                <div>
                    <div>
                        <form:label path="a4">4: </form:label>
                        <form:select path="a4" class="form-control">
                            <c:forEach var="player" items="${ allPlayers }">
                                <option value="${ player.fullName() }">
                                        ${ player.fullName() } ( ${ player.playerPosition}
                                    / ${ player.team.fullTeamName() } )
                                </option>
                            </c:forEach>
                        </form:select>
                    </div>
                </div>
                <div>
                    <div>
                        <form:label path="a5">5: </form:label>
                        <form:select path="a5" class="form-control">
                            <c:forEach var="player" items="${ allPlayers }">
                                <option value="${ player.fullName() }">
                                        ${ player.fullName() } ( ${ player.playerPosition}
                                    / ${ player.team.fullTeamName() } )
                                </option>
                            </c:forEach>
                        </form:select>
                    </div>
                </div>
                <div>
                    <div>
                        <form:label path="a6">6: </form:label>
                        <form:select path="a6" class="form-control">
                            <c:forEach var="player" items="${ allPlayers }">
                                <option value="${ player.fullName() }">
                                        ${ player.fullName() } ( ${ player.playerPosition}
                                    / ${ player.team.fullTeamName() } )
                                </option>
                            </c:forEach>
                        </form:select>
                    </div>
                </div>
                <div>
                    <div>
                        <form:label path="a7">7: </form:label>
                        <form:select path="a7" class="form-control">
                            <c:forEach var="player" items="${ allPlayers }">
                                <option value="${ player.fullName() }">
                                        ${ player.fullName() } ( ${ player.playerPosition}
                                    / ${ player.team.fullTeamName() } )
                                </option>
                            </c:forEach>
                        </form:select>
                    </div>
                </div>
                <div>
                    <div>
                        <form:label path="a8">8: </form:label>
                        <form:select path="a8" class="form-control">
                            <c:forEach var="player" items="${ allPlayers }">
                                <option value="${ player.fullName() }">
                                        ${ player.fullName() } ( ${ player.playerPosition}
                                    / ${ player.team.fullTeamName() } )
                                </option>
                            </c:forEach>
                        </form:select>
                    </div>
                </div>
                <div>
                    <div>
                        <form:label path="a9">9: </form:label>
                        <form:select path="a9" class="form-control">
                            <c:forEach var="player" items="${ allPlayers }">
                                <option value="${ player.fullName() }">
                                        ${ player.fullName() } ( ${ player.playerPosition}
                                    / ${ player.team.fullTeamName() } )
                                </option>
                            </c:forEach>
                        </form:select>
                    </div>

                    <hr>

                    <div>
                        <form:label path="aStartingPitcher">Away Starting Pitcher</form:label>
                        <form:select path="aStartingPitcher" class="form-control">
                            <c:forEach var="player" items="${ allPlayers }">
                                <option value="${ player.fullName() }">
                                        ${ player.fullName() } (${ player.playerPosition })
                                </option>
                            </c:forEach>
                        </form:select>
                    </div>
                </div>
            </div>


            <div class="col-2">
                <div>
                    <form:label path="a1p">Position</form:label>
                    <form:select path="a1p" class="form-control">
                        <option value="Catcher">
                            Catcher
                        </option>
                        <option value="First Base">
                            First Base
                        </option>
                        <option value="Second Base">
                            Second Base
                        </option>
                        <option value="Third Base">
                            Third Base
                        </option>
                        <option value="Shortstop">
                            Shortstop
                        </option>
                        <option value="Left Field">
                            Left Field
                        </option>
                        <option value="Center Field">
                            Center Field
                        </option>
                        <option value="Right Field">
                            Right Field
                        </option>
                        <option value="Designated Hitter">
                            Designated Hitter
                        </option>
                    </form:select>
                </div>

                <div>
                    <form:label path="a2p">Position</form:label>
                    <form:select path="a2p" class="form-control">
                        <option value="Catcher">
                            Catcher
                        </option>
                        <option value="First Base">
                            First Base
                        </option>
                        <option value="Second Base">
                            Second Base
                        </option>
                        <option value="Third Base">
                            Third Base
                        </option>
                        <option value="Shortstop">
                            Shortstop
                        </option>
                        <option value="Left Field">
                            Left Field
                        </option>
                        <option value="Center Field">
                            Center Field
                        </option>
                        <option value="Right Field">
                            Right Field
                        </option>
                        <option value="Designated Hitter">
                            Designated Hitter
                        </option>
                    </form:select>
                </div>

                <div>
                    <form:label path="a3p">Position</form:label>
                    <form:select path="a3p" class="form-control">
                        <option value="Catcher">
                            Catcher
                        </option>
                        <option value="First Base">
                            First Base
                        </option>
                        <option value="Second Base">
                            Second Base
                        </option>
                        <option value="Third Base">
                            Third Base
                        </option>
                        <option value="Shortstop">
                            Shortstop
                        </option>
                        <option value="Left Field">
                            Left Field
                        </option>
                        <option value="Center Field">
                            Center Field
                        </option>
                        <option value="Right Field">
                            Right Field
                        </option>
                        <option value="Designated Hitter">
                            Designated Hitter
                        </option>
                    </form:select>
                </div>

                <div>
                    <form:label path="a4p">Position</form:label>
                    <form:select path="a4p" class="form-control">
                        <option value="Catcher">
                            Catcher
                        </option>
                        <option value="First Base">
                            First Base
                        </option>
                        <option value="Second Base">
                            Second Base
                        </option>
                        <option value="Third Base">
                            Third Base
                        </option>
                        <option value="Shortstop">
                            Shortstop
                        </option>
                        <option value="Left Field">
                            Left Field
                        </option>
                        <option value="Center Field">
                            Center Field
                        </option>
                        <option value="Right Field">
                            Right Field
                        </option>
                        <option value="Designated Hitter">
                            Designated Hitter
                        </option>
                    </form:select>
                </div>

                <div>
                    <form:label path="a5p">Position</form:label>
                    <form:select path="a5p" class="form-control">
                        <option value="Catcher">
                            Catcher
                        </option>
                        <option value="First Base">
                            First Base
                        </option>
                        <option value="Second Base">
                            Second Base
                        </option>
                        <option value="Third Base">
                            Third Base
                        </option>
                        <option value="Shortstop">
                            Shortstop
                        </option>
                        <option value="Left Field">
                            Left Field
                        </option>
                        <option value="Center Field">
                            Center Field
                        </option>
                        <option value="Right Field">
                            Right Field
                        </option>
                        <option value="Designated Hitter">
                            Designated Hitter
                        </option>
                    </form:select>
                </div>

                <div>
                    <form:label path="a6p">Position</form:label>
                    <form:select path="a6p" class="form-control">
                        <option value="Catcher">
                            Catcher
                        </option>
                        <option value="First Base">
                            First Base
                        </option>
                        <option value="Second Base">
                            Second Base
                        </option>
                        <option value="Third Base">
                            Third Base
                        </option>
                        <option value="Shortstop">
                            Shortstop
                        </option>
                        <option value="Left Field">
                            Left Field
                        </option>
                        <option value="Center Field">
                            Center Field
                        </option>
                        <option value="Right Field">
                            Right Field
                        </option>
                        <option value="Designated Hitter">
                            Designated Hitter
                        </option>
                    </form:select>
                </div>

                <div>
                    <form:label path="a7p">Position</form:label>
                    <form:select path="a7p" class="form-control">
                        <option value="Catcher">
                            Catcher
                        </option>
                        <option value="First Base">
                            First Base
                        </option>
                        <option value="Second Base">
                            Second Base
                        </option>
                        <option value="Third Base">
                            Third Base
                        </option>
                        <option value="Shortstop">
                            Shortstop
                        </option>
                        <option value="Left Field">
                            Left Field
                        </option>
                        <option value="Center Field">
                            Center Field
                        </option>
                        <option value="Right Field">
                            Right Field
                        </option>
                        <option value="Designated Hitter">
                            Designated Hitter
                        </option>
                    </form:select>
                </div>

                <div>
                    <form:label path="a8p">Position</form:label>
                    <form:select path="a8p" class="form-control">
                        <option value="Catcher">
                            Catcher
                        </option>
                        <option value="First Base">
                            First Base
                        </option>
                        <option value="Second Base">
                            Second Base
                        </option>
                        <option value="Third Base">
                            Third Base
                        </option>
                        <option value="Shortstop">
                            Shortstop
                        </option>
                        <option value="Left Field">
                            Left Field
                        </option>
                        <option value="Center Field">
                            Center Field
                        </option>
                        <option value="Right Field">
                            Right Field
                        </option>
                        <option value="Designated Hitter">
                            Designated Hitter
                        </option>
                    </form:select>
                </div>

                <div>
                    <form:label path="a9p">Position</form:label>
                    <form:select path="a9p" class="form-control">
                        <option value="Catcher">
                            Catcher
                        </option>
                        <option value="First Base">
                            First Base
                        </option>
                        <option value="Second Base">
                            Second Base
                        </option>
                        <option value="Third Base">
                            Third Base
                        </option>
                        <option value="Shortstop">
                            Shortstop
                        </option>
                        <option value="Left Field">
                            Left Field
                        </option>
                        <option value="Center Field">
                            Center Field
                        </option>
                        <option value="Right Field">
                            Right Field
                        </option>
                        <option value="Designated Hitter">
                            Designated Hitter
                        </option>
                    </form:select>
                </div>
            </div>
        </div>
        <hr>
        <input class="btn btn-primary btn-lg btn-block" type="submit" value="Submit Lineup"/>
    </div>
    </form:form>
</div>
</section>
</body>
</html>