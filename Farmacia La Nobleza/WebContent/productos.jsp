<%@page import="entities.Producto"%>
<%@page import="java.util.List"%>
<%@ include file="snippets/head.jsp" %>
<title>Medicinas - Farmacia La Nobleza</title>

</head>

<body>
<%@ include file="snippets/header.jsp" %>
  <main class="main">
    <section class="productos section">
      <div class="productos__container container">
        <div class="productos__2fr">
          <div>
            <div class="productos__top">
              <% String categoria=(String) request.getAttribute("categoria"); %><%=categoria %>
            </div>
          </div>
          <div>
            <figure>
              <img src="assets/img/banner-productos.jpg" alt="">
            </figure>
            <div class="productos__flex">
              <select class="input" name="" id="">
                <option disabled selected>Ordenar por:</option>
                <option value="item 1">Precio de mayor a menor</option>
                <option value="item 2">Precio de menor a mayor</option>
                <option value="item 3">Ordenar de letra A hasta la Z</option>
                <option value="item 3">Ordenar de letra Z hasta la A</option>
              </select>
              <p class="productos__frase title">#QuedateEnCasa</p>
            </div>
            <div class="productos__grid">
            <% List<Producto> listaProductos = (List<Producto>) request.getAttribute("productos");
            	String dni1=(String) session.getAttribute(Constantes.DNI_US); 
            	if(listaProductos!=null){
            		for(Producto productoItem:listaProductos){%>
              <article class="card">
                <figure class="card__image">
                  <img src="assets/img/productos.jpg" alt="producto">
                </figure>
                <div class="card__data">
                  <h3 class="card__title"><%=productoItem.getNom_producto() %></h3>
                  <p class="card__price"><%=productoItem.getPrecio_pro() %></p>
                  <a href="#" class="button card__button"><i class="fas fa-plus-circle"></i><span>Ver Detalles</span></a>
                  <a href="<%=(activeSession!=null)? "CompraServlet?dni="+dni1+"&id="+productoItem.getId_producto():"login.jsp" %>" class="button card__button"><i class="fas fa-cart-plus"></i><span>Agregar Al Carrito</span></a>
                </div>
              </article>
              <%}}%>
            </div>
          </div>
        </div>

      </div>
    </section>
  </main>
<%@ include file="snippets/footer.jsp" %>
</body>

</html>