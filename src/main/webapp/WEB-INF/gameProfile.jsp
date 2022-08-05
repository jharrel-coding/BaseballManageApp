<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- for forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for validations -->
<%@ page isErrorPage="true"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <h1>${ game.homeTeam } vs ${ game.awayTeam }</h1>

    hello!


</div>
</body>
</html>



<%--                <td><c:out value="${ player.fullName() }" /></td>--%>
<%--                <td><c:out value="${ player.playerPosition }" /></td>--%>
<%--                <td>--%>
<%--                    <c:choose>--%>
<%--                        <c:when test="${ player.throwingHand == true }">--%>
<%--                            Right--%>
<%--                        </c:when>--%>
<%--                        <c:otherwise>--%>
<%--                            Left--%>
<%--                        </c:otherwise>--%>
<%--                    </c:choose>--%>
<%--                    /--%>
<%--                    <c:choose>--%>
<%--                        <c:when test="${ player.hittingHand == true }">--%>
<%--                            Right--%>
<%--                        </c:when>--%>
<%--                        <c:otherwise>--%>
<%--                            Left--%>
<%--                        </c:otherwise>--%>
<%--                    </c:choose>--%>
<%--                </td>--%>
