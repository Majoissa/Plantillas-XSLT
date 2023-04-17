<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Botiga Vintage</title>
        <style>
		  body{
		  color:#50484B;
		  background-image: url(https://cdn03.plentymarkets.com/csse1tl3e797/item/images/18600/middle/profhome-tapete-wallpaper-374165-GU.jpg);
		  }
          .titulo {
            text-align: center;
			color: #50484B;
			font-family: fantasy;
          }
		  
			.carrito{
			  margin-left: 94%;
			  width: 30px;
			  color: #50484B;
			  background-color:#E89C8C;
			  border-radius: 5px;
			  padding: 3px;
			  position: fixed;
			  }
          table {
            text-align: justify;
			border: 1px solid #50484B;
			border-radius: 5px;
			margin:auto;
			font-family: sans-serif;
			font-size: 13px;
			background-color: #F9E0F8;
          }
		  .encabezado{
		  background-color: #E89C8C;
		  }
		  
		  .btn{
		background-color: #F9E0F8;
		color: #50484B;
		transition: background-color .3s ease-out;
		text-align: justify;
		}
		
		.btn:hover{
		background-color: #E89C8C;
		cursor:pointer;
		}

        </style>
      </head>
      <body>
	  <form method="POST" action="carrito.php">  
		<a href="carritoV.php">
			<img class="carrito" src="https://cdn-icons-png.flaticon.com/512/3144/3144456.png" alt="Carrito de compras">
			</img>
		</a>
	  </form> 
        <div class="titulo">
          <h1>Tienda de Indumentaria</h1>
        </div>
		<div class="tabla">
        <table>
          <tr class="encabezado">
            <th>Código</th>
            <th>Nombre</th>
            <th>Descripción</th>
            <th>Precio</th>
            <th>IVA</th>
            <th>Tipo</th>
			<th>Cantidad</th>
          </tr>
          <xsl:for-each select="productos/producto">
            <tr>
              <td><xsl:value-of select="codigo"/></td>
              <td><xsl:value-of select="nombre"/></td>
              <td><xsl:value-of select="descripcion"/></td>
              <td><xsl:value-of select="precio"/></td>
              <td><xsl:value-of select="iva"/></td>
		      <td><xsl:value-of select="tipo"/></td>
			 <td>
				<form method="POST" action="compraVintage.php">
			<input type="hidden" name="codi">
				<xsl:attribute name="value">
				<xsl:value-of select="codigo"/>
				</xsl:attribute>
			</input>
			<input type="hidden" name="nom">
				<xsl:attribute name="value">
				<xsl:value-of select="nombre"/>
				</xsl:attribute>
			</input>
			<input type="number" value="cantidad" name="cantidad" min="1">
			    <xsl:attribute name="max">
				<xsl:value-of select="cantidad"/>
				</xsl:attribute>
			</input>
			<input type="hidden" name="preu">
				<xsl:attribute name="value">
				<xsl:value-of select="precio"/>
				</xsl:attribute>
			</input>
			<input type="submit" class="btn" value="Agregar al carrito"/>
			</form>
			  </td>
		    </tr>
		  </xsl:for-each>
		</table>
		</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
