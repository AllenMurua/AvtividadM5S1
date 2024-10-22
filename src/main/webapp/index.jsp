<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">    <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet">
</head>
<body class="text-center">
<main class="form-signin">
    <form action="${pageContext.request.contextPath}/hello" method="post">
        <img class="mb-4" src="${pageContext.request.contextPath}/images/user.png" alt="" width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal">Por favor, ingrese</h1>

        <% if (request.getParameter("error") != null) { %>
        <div class="alert alert-danger">Usuario o contraseña incorrectos</div>
        <% } %>

        <div class="form-floating mb-3">
            <input type="text" name="usu" class="form-control" id="usu" placeholder="Usuario" required>
            <label for="usu">Usuario</label>
        </div>

        <div class="form-floating mb-3">
            <input type="password" name="pass" class="form-control" id="pass" placeholder="Contraseña" required>
            <label for="pass">Contraseña</label>
        </div>

        <button class="w-100 btn btn-lg btn-primary" type="submit">Ingresar</button>
    </form>
</main>
</body>
</html>