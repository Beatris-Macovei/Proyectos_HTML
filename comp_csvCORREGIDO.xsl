<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text"/>

<xsl:template match="/">

        <xsl:text>Nombre,Marca,Categoria,Precio&#10;</xsl:text>
        <xsl:for-each select="tienda/componente">
            <xsl:if test="stock &lt; 10">

                 "<xsl:value-of select="nombre"/>",
                "<xsl:value-of select="marca"/>",

                <xsl:value-of select="substring(@categoria,1,3)"/>

                <xsl:value-of select="concat( @precio, ' €')"/>

                <xsl:text>&#10;</xsl:text>

            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
