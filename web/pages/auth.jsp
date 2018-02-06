<%--
  Created by IntelliJ IDEA.
  User: eugene
  Date: 01.02.18
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<% if (session.getAttribute("login") != null) response.sendRedirect("/pages/questionnaire.jsp");%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <link rel="shortcut icon" href="../images/bgauth.png" type="image/x-icon">
    <link href="../styles/authstyle.css" rel="stylesheet">
</head>
<body>

<form id="zoomIn" action="/authentication" method="post">

    <div class="items">

        <h2

    <% Object o = session.getAttribute("printError"); %>
    <% if (o != null && (boolean) o ) { %>
         style="opacity: 1; animation-name: flash;"
    <% } else { %>
         style="opacity: 0;"
    <% } %>
                    >Access denied</h2>

    <% session.setAttribute("printError", false); %>

    <input class="pulse" type="text" name="username" placeholder="Login" >

    <input class="pulse" type="password" name="password" placeholder="Password">
    <button type="submit">Login</button>

    </div>
</form>

</body>
</html>
