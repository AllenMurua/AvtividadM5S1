<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Área Privada</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">  <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet">
</head>
<body>
<%
  String usuario = (String) session.getAttribute("usuario");
  if (usuario == null) {
    response.sendRedirect(request.getContextPath() + "/index.jsp");
    return;
  }
%>

<div class="container">
  <div class="row mt-5">
    <div class="col-12 text-center">
      <h1>Área Privada</h1>
      <p class="lead">Bienvenido, <%= usuario %></p>
      <a href="${pageContext.request.contextPath}/Deslogueo" class="btn btn-danger">Cerrar Sesión</a>
    </div>
  </div>
</div>
</body>
</html>