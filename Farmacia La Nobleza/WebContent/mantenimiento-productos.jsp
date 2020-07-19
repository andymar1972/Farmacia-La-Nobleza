<%@ include file="snippets/head.jsp" %>
<%@page import="entities.Producto" %>
<%@page import="java.util.List"%>
<title>Mantenimiento Productos - Farmacia La Nobleza</title>
</head>

<body>
<%@ include file="snippets/header.jsp" %>
  <main class="main">
    <section class="mantenimiento-productos section">
      <div class="mantenimiento-productos__container container">
        <h2 class="title">Mantenimiento Productos</h2>
        
        <form action="ProductoServlet" method="post" id="">
        
        
          <select class="mantenimiento-productos__combotop input" name="" id="">
            <option disabled selected>Escoger categoria</option>
            <option value="hogar">Hogar</option>
            <option value="medicina">Medicina</option>
          </select>
          <input class="mantenimiento-productos__submit button-submit" type="submit" value="CONSULTAR">
          <input type="hidden" name="type" value="list">
        </form>
        <table class="mantenimiento-productos__table table">
          <thead class="table__thead">
            <tr class="table__row">
              <th class="table__item">
                Nombre
              </th>
              <th class="table__item">
                Proveedor
              </th>
              <th class="table__item">
                Categoria
              </th>
              <th class="table__item">
                Unidad de medida
              </th>
              <th class="table__item">
                Precio unidad
              </th>
              <th class="table__item">
                Stock
              </th>
              <th class="table__item">
                Acciones
              </th>
            </tr>
          </thead>
          <tbody class="table__body">
          <%
                List<Producto> listadoProducto= (List<Producto>) request.getAttribute("datos");
                if(listadoProducto!=null){
                	for(Producto listado:listadoProducto ){
                		
                
          %>
          
            <tr class="table__row">
              <th class="table__item">
                <%=listado.getNom_producto() %>
              </th>
              <th class="table__item">
                <%=listado.getNombre_proveedor() %>
              </th>
              <th class="table__item">
                <%=listado.getNombre_cat() %>
              </th>
              <th class="table__item">
                <%=listado.getU_medida() %>
              </th>
              <th class="table__item">
                S/<span><%=listado.getPrecio_pro() %></span>
              </th>
              <th class="table__item">
                <%=listado.getStock() %>
              </th>
              <th class="table__item">
                <a href="#">Eliminar</a>
                <a href="#">Modificar</a>
              </th>
            </tr>
           <%}} %>
          </tbody>
        </table>
      </div>
    </section>
  </main>
<%@ include file="snippets/footer.jsp" %>
</body>

</html>