<%@ include file="snippets/head.jsp" %>
<title>Registro Usuario - Farmacia La Nobleza</title>

</head>

<body>
  <%@ include file="snippets/header.jsp" %>

  <main class="main">
    <section class="registro-usuario section">
      <div class="registro-usuario__container container">
        <h2 class="registro-usuario__title title">Registro</h2>
        <form class="registro-usuario__form" action="" method="POST" id="form-register-user">
          <div>
            <input class="input" type="text" name="nombres" id="nombres-user" placeholder="Nombres">
          </div>
          <div>
            <input class="input" type="text" name="apellidos" id="apellidos-user" placeholder="Apellidos">
          </div>
          <div>
            <input class="input" type="text" name="dni" id="dni-user" placeholder="Dni">
          </div>
          <div>
            <input class="input" type="text" name="celular" id="celular-user" placeholder="Celular" maxlength="9">
          </div>
          <div>
            <input class="input" type="text" name="telefono" id="telefono-user" placeholder="Telefono" maxlength="9">
          </div>
          <div>
            <input class="input" type="email" name="correo" id="correo-user" placeholder="Correo">
          </div>
          <div>
            <input class="input" type="password" name="contrase�a" id="contrase�a-user" placeholder="Contrase�a (Minimo 6 caracteres)">
          </div>
          <div>
            <input class="input" type="password" name="repetir" id="repetir-contrase�a-user" placeholder="Repetir Contrase�a">
          </div>
          <div>
            <div>
              <input class="button-submit" type="submit" name="register" value="Registrarme">
            </div>
          </div>
        </form>
      </div>

    </section>
  </main>
<%@ include file="snippets/footer.jsp" %>
</body>

</html>