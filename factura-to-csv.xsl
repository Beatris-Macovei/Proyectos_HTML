======================================================

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:text>Producto,Cantidad.Precio&#10;</xsl:text>
        <xsl:for-each select="factura/lineas/linea">
          <xsl:sort select="precio_unitario" order="ascending"/>
          <xsl:text>"</xsl:text>
          <xsl:value-of select="producto"/>
          <xsl:text>"</xsl:text> <!-- Para separar con , -->
          <xsl:text>,</xsl:text>
          <xsl:value-of select="cantidad"/>
          <xsl:text>,</xsl:text>
          <!-- concatenar "€" para que salga 35.90€ -->
          <xsl:value-of select="concat(precio_unitario, ' €')"/>
          <!-- Salto de linea despues de cada producto -->
          <xsl:text>&#10;</xsl:text>
    </xsl:for-each>
      <!-- A partir de aqui es otro tipo de repaso y el csv estaria mal formado -->
      <xsl:text>Suma precios unitarios: </xsl:text>
      <xsl:value-of select="sum(factura/lineas/linea/precio_unitario)"/>
      <xsl:text>&#10;</xsl:text>
      
    </xsl:template>
</xsl:stylesheet>

===============================================================================


