<%--
  Created by IntelliJ IDEA.
  User: eugene
  Date: 02.02.18
  Time: 18:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  %>
<%@ page import="stat.Statisctic" %>
<% if (session.getAttribute("login") == null) response.sendRedirect("/pages/auth.jsp");%>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Questionnaire</title>
    <link href="../styles/quest.css" rel="stylesheet">
    <link rel="stylesheet" href="../styles/base.css">
    <link rel="stylesheet" href="../styles/preset-1.css">
</head>
<body>

    <div class="myHeader">
        <h3>Hi, <%= session.getAttribute("login")%></h3>
        <h2>Questionnaire</h2>
        <a href="../authentication">Logout</a>
    </div>

      <form method="post" action="/stat">
          <section class="last">

              <% Object isSubmitted = session.getAttribute("isSubmitted"); %>

              <fieldset class="required"><h2><div class="title-part">
              Насколько сложно ориентироваться на нашем веб-сайте?<div class="require smallipop-initialized smallipop1" title=""><span class="smallipop-hint">
Требуется ответ
</span></div></div></h2><div class="special-padding-row"><div class="label-cont">
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question1" value="1">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Очень просто</strong>
                      <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(0,0) %></p>
                      <% } %>
                  </span>
              </label>
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question1" value="2">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Скорее просто</strong>
                      <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(0,1) %></p>
                      <% } %>
                  </span>
              </label>
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question1" value="3">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Нормально</strong>
                      <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(0,2) %></p>
                      <% } %>
                  </span>
              </label>
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question1" value="4">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Скорее сложно</strong>
                       <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(0,3) %></p>
                      <% } %>
                  </span>
              </label>
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question1" value="5">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Очень сложно</strong>
                     <% if (session.getAttribute("isSubmitted") != null) { %>
                      <p><%= Statisctic.getPercentageValue(0,4) %></p>
                      <% } %>
                  </span>
              </label></div></div></fieldset>

              <fieldset class="required"><h2><div class="title-part">
              Насколько сложно найти на нашем веб-сайте нужную информацию?<div class="require smallipop-initialized smallipop2" title=""><span class="smallipop-hint">
Требуется ответ
</span></div></div></h2><div class="special-padding-row"><div class="label-cont">
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question2" value="1">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Очень просто</strong>
                      <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(1,0) %></p>
                      <% } %>
                  </span>
              </label>
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question2" value="2">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Скорее просто</strong>
                      <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(1,1) %></p>
                      <% } %>
                  </span>
              </label>
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question2" value="3">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Нормально</strong>
                      <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(1,2) %></p>
                      <% } %>
                  </span>
              </label>
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question2" value="4">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Скорее сложно</strong>
                      <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(1,3) %></p>
                      <% } %>
                  </span>
              </label>
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question2" value="5">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Очень сложно</strong>
                      <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(1,4) %></p>
                      <% } %>
                  </span>
              </label></div></div></fieldset>

              <fieldset class="required"><h2><div class="title-part">
              В какой степени является информация на нашем веб-сайте понятной?<div class="require smallipop-initialized smallipop3" title=""><span class="smallipop-hint">
Требуется ответ
</span></div></div></h2><div class="special-padding-row"><div class="label-cont">
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question3" value="1">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Полностью понятна</strong>
                      <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(2,0) %></p>
                      <% } %>
                  </span>
              </label>
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question3" value="2">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Понятна</strong>
                      <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(2,1) %></p>
                      <% } %>
                  </span>
              </label>
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question3" value="3">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Скорее понятна</strong>
                      <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(2,2) %></p>
                      <% } %>
                  </span>
              </label>
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question3" value="4">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Скорее непонятна</strong>
                      <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(2,3) %></p>
                      <% } %>
                  </span>
              </label>
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question3" value="5">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Непонятна</strong>
                      <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(2,4) %></p>
                      <% } %>
                  </span>
              </label></div></div></fieldset>

              <fieldset class="required"><h2><div class="title-part">
              Как Вы оцениваете внешний вид нашего веб-сайта?<div class="require smallipop-initialized smallipop4" title=""><span class="smallipop-hint">
Требуется ответ
</span></div></div></h2><div class="special-padding-row"><div class="label-cont">
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question4" value="1">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Очень хороший</strong>
                      <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(3,0) %></p>
                      <% } %>
                  </span>
              </label>
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question4" value="2">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Хороший</strong>
                      <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(3,1) %></p>
                      <% } %>
                  </span>
              </label>
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question4" value="3">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Нормальный</strong>
                      <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(3,2) %></p>
                      <% } %>
                  </span>
              </label>
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question4" value="4">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Плохой</strong>
                      <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(3,3) %></p>
                      <% } %>
                  </span>
              </label>
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question4" value="5">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Мне он совсем не нравится</strong>
                      <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(3,4) %></p>
                      <% } %>
                  </span>
              </label></div></div></fieldset>

              <fieldset class="required"><h2><div class="title-part">
              Как Вы оцениваете актуальность содержания на нашем веб-сайте?<div class="require smallipop-initialized smallipop5" title=""><span class="smallipop-hint">
Требуется ответ
</span></div></div></h2><div class="special-padding-row"><div class="label-cont">
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question5" value="1">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Актуальное</strong>
                      <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(4,0) %></p>
                      <% } %>
                  </span>
              </label>
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question5" value="2">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Скорее актуальное</strong>
                      <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(4,1) %></p>
                      <% } %>
                  </span>
              </label>
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question5" value="3">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Не слишком актуальное</strong>
                      <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(4,2) %></p>
                      <% } %>
                  </span>
              </label>
              <label class="input-group input-group-radio row">
                  <input type="radio" class="hidden-inputs" name="question5" value="4">
                  <span class="input-group-addon"></span>
                  <span class="input-group-title"><strong>Совсем не актуальное</strong>
                      <% if (isSubmitted != null) { %>
                      <p><%= Statisctic.getPercentageValue(4,3) %></p>
                      <% } %>
                  </span>
              </label></div></div></fieldset>

          </section>

          <input type="submit">
      </form>
</body>
</html>
