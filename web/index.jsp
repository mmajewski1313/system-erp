<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  Tabelka pracowników
  ...
  <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
                     url = "jdbc:mysql://localhost:3306/system_erp"
                     user = "root"  password = ""/>

  <sql:query dataSource = "${snapshot}" var = "result">
    SELECT * from Employees;
  </sql:query>

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
</html>
