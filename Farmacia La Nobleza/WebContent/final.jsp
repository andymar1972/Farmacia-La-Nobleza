<%@page import="entities.Detalle_Compra"%>
<%@page import="entities.Compra"%>
<%@page import="entities.Boleta"%>
<%@ include file="snippets/head.jsp" %>
<%@page import="entities.Producto" %>
<%@page import="java.util.List"%>
<%@ taglib uri="etiquetaSlider" prefix="ts" %>
<title>Confirmacion de Compra - Farmacia La Nobleza</title>
</head>

<body>
<%@ include file="snippets/header.jsp" %>
  <main class="main">
    <section class="mantenimiento-productos section">
      <div class="mantenimiento-productos__container container">       
      
         <h2 class="title">Confirmacion de Compra</h2>        
         
		<% Boleta boleta=(Boleta) request.getAttribute("boleta"); 
		if(boleta!=null){
			Compra compra=(Compra) request.getAttribute("pedido");%>
			<h4>Boleta N�: <%=boleta.getIdboleta() %></h4>
			<h4>Monto Total: <%=boleta.getMontototal() %></h4>
			<h4>Fecha de Envio: <%=compra.getFechaEnvio() %></h4>
			<h4>Diereccion: <%=(compra.getDireccionDestinatario()!=null)? compra.getDireccionDestinatario():"-"%></h4>
        <table class="mantenimiento-productos__table table">
          <thead class="table__thead">
            <tr class="table__row">
              <th class="table__item">
                Nombre
              </th>
              <th class="table__item">
                Precio
              </th>
              <th class="table__item">
                Cantidad
              </th>
              <th class="table__item">
                Precio Total
              </th>
              
            </tr>
          </thead>
          <tbody class="table__body">
          <%
                List<Detalle_Compra> listadoProducto= (List<Detalle_Compra>) request.getAttribute("listado");
                if(listadoProducto!=null){
                	for(Detalle_Compra listado:listadoProducto){
                		
                
          %>
          
            <tr class="table__row">
              <th class="table__item">
                <%=listado.getNombre_producto()%>
              </th>
              <th class="table__item">
                <%=listado.getPrecio_uni()%>
              </th>
              <th class="table__item">
                <%=listado.getCantidad()%>
              </th>
              <th class="table__item">
                <%=listado.total_detalle_producto()%>
              </th>
            </tr>
           <%}}%>
          </tbody>
        </table>
        <%} %>
      </div>
      <h2>Regresar al <a href="index.jsp">INICIO</a></h2>
    </section>
  </main>
<%@ include file="snippets/footer.jsp" %>
</body>

</html>