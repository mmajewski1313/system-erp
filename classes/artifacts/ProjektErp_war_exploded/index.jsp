<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
  <head>
    <link href="webjars/bootstrap/3.2.0/css/bootstrap.css" rel="stylesheet">
    <link href="<c:url value="../webapp/resources/theme1/css/main.css" />" rel="stylesheet">
    <script src="<c:url value="../resources/theme1/js/jquery.1.10.2.min.js" />"></script>
    <script src="<c:url value="../resources/theme1/js/main.js" />"></script>
    <title>Stronka</title>
  </head>
  <body>
  Tabelka pracowników
  ...
  <h1>1. Test CSS</h1>

  <h2>2. Test JS</h2>
  <div id="msg"></div>

  <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
                     url = "jdbc:mysql://localhost:3306/system_erp"
                     user = "root"  password = ""/>

  <sql:query dataSource = "${snapshot}" var = "result">
    SELECT * from Employees;
  </sql:query>

  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <a class="navbar-brand" href="#">Spring 3 MVC Project</a>
      </div>
    </div>
  </nav>

  <table border = "1" width = "100%">
    <tr>
      <th>ID</th>
      <th>Imię</th>
      <th>Nazwisko</th>
      <th>Adres</th>
    </tr>

    <c:forEach var = "row" items = "${result.rows}">
      <tr>
        <td> <c:out value = "${row.id}"/></td>
        <td> <c:out value = "${row.name}"/></td>
        <td> <c:out value = "${row.surname}"/></td>
        <td> <c:out value = "${row.address}"/></td>
      </tr>
    </c:forEach>
  </table>


  </body>
  <script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
  <script type="text/javascript" src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</html>
