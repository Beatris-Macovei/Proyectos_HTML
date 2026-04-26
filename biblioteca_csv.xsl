<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text"/>

    <xsl:template match="/">

        <xsl:text>ISBN,Título,Autor,Editorial,Año,Precio,Géneros,Disponible&#10;</xsl:text>

        <xsl:for-each select="biblioteca/libro[disponible='true']">

            <!-- ORDENAR POR PRECIO DESC -->
            <xsl:sort select="precio" data-type="number" order="descending"/>

            <!-- ISBN -->
            <xsl:value-of select="@isbn"/>
            <xsl:text>,</xsl:text>

            <!-- TÍTULO -->
            <xsl:value-of select="titulo"/>
            <xsl:text>,</xsl:text>

            <!-- AUTOR -->
            <xsl:value-of select="concat(autor/nombre, ' ', autor/apellido)"/>
            <xsl:text>,</xsl:text>

            <!-- EDITORIAL -->
            <xsl:value-of select="editorial"/>
            <xsl:text>,</xsl:text>

            <!-- AÑO (substring) -->
            <xsl:value-of select="substring(fecha_publicacion,1,4)"/>
            <xsl:text>,</xsl:text>

            <!-- PRECIO -->
            <xsl:value-of select="precio"/>
            <xsl:text>,</xsl:text>

            <!-- GÉNEROS (separados por ;) -->
            <xsl:for-each select="generos/genero">
                <xsl:value-of select="."/>
                <xsl:if test="position() != last()">;</xsl:if>
            </xsl:for-each>
            <xsl:text>,</xsl:text>

            <!-- DISPONIBLE -->
            <xsl:value-of select="disponible"/>

            <!-- SALTO DE LÍNEA -->
            <xsl:text>&#10;</xsl:text>

        </xsl:for-each>

    </xsl:template>
</xsl:stylesheet>
