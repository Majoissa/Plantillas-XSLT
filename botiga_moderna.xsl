
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Botiga Moderna</title>
        <style>
          html {
            box-sizing: border-box;
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

          body {
            font-family: sans-serif;
            font-size: 15px;
			color:#50484B;
			background-image: url(https://cdn03.plentymarkets.com/csse1tl3e797/item/images/18600/middle/profhome-tapete-wallpaper-374165-GU.jpg);
		  
          }

          h1,
          h3 {
            font-family: fantasy;
			letter-spacing: 1px;
			font-size: 23px;
          }

          .nombre-sitio {
			font-family: 'vogue',serif;
            margin-top: 50px;
            text-align: center;
			font-size: 70px;
          }
		  
		  h2{
			font-family: 'vogue',serif;
            text-align: center;
			font-size: 25px;
		  }

          .btn{
		background-color: #F9E0F8;
		color: #50484B;
		transition: background-color .3s ease-out;
		text-align: center;
		border: none;
		width: 150px;
		padding: 5px;
		border-radius: 5px;
		margin:auto;
		}
		
		.btn:hover{
		background-color: #E89C8C;
		cursor:pointer;
		}


          .contenido-principal {
            padding-top: 1rem;
          }

          .producto {
            background-color: #50484B;
			padding: 35px;
			height:800px;
          }

          .texto-producto {
            text-align: center;
            color: #FFFFFF;
          }
		  
		  .texto-producto img {
		  width: 90%;
		  height: 60%;
		  object-fit: cover;
		}
		
		.fotoProducto:hover{
		  width: 95%;
		  height: 65%;
		  object-fit:cover;
		  text-align:center;
		 
		}
          .texto-producto h3 {
            margin: 0;
          }

          .texto-producto p {
            margin: 0;
            padding: 10px;
          }

          .texto-producto .precio {
            text-align: center;
            color: #FFFFFF;
          }

          .listado-productos {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(20rem, 1fr));
            gap: 1em;
          }

          .producto h3 {
            margin-top: 1rem;
          }
		  
		 
        </style>
      </head>
      <body>
	<form method="POST" action="carrito.php">  
		<a href="carrito.php">
			<img class="carrito" src="https://cdn-icons-png.flaticon.com/512/3144/3144456.png" alt="Carrito de compras">
			</img>
		</a>
	</form> 
		<header>
          <h1 class="nombre-sitio">MAGNOLIA</h1>
        </header>

        <main class="contenido-principal">
          <h2 class="text-center">NUESTROS PRODUCTOS </h2>
		  
          <div class="listado-productos">
            <xsl:for-each select="productos/producto">
              <div class="producto">
                <div class="texto-producto">
                  <img class="fotoProducto" src="{imagen/@src}" alt="{imagen/@alt}" />
                  <h3><xsl:value-of select="nombre"/></h3>
                  <p><xsl:value-of select="descripcion"/></p>
                  <p class="precio">Precio: <xsl:value-of select="precio"/> EU</p>
                  <p><span>IVA incluido:</span> <xsl:value-of select="iva"/></p>
				  <p><xsl:value-of select="tipo"/></p>
				  <p>Cantidad:<xsl:value-of select="cantidad"/></p>
		   <form method="POST" action="compra.php">
			<input type="hidden" name="foto">
				<xsl:attribute name="value">
				<xsl:value-of select="imagen"/>
				</xsl:attribute>
			</input>
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
			<input type="hidden" name="iva">
				<xsl:attribute name="value">
				<xsl:value-of select="iva"/>
				</xsl:attribute>
			</input>
			
			<input type="submit" class="btn" value="Agregar al carrito" name="agregar"/>
		</form>	
		</div>
		</div> 
		</xsl:for-each>
		</div>
		</main>
			
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>


