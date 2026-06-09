<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:template match="/">
        <xsl:text>{&#10;</xsl:text>
        <xsl:text>  "empresa": &#10;</xsl:text>
        <xsl:text>{&#10;</xsl:text>
        <xsl:for-each select="empresa/empleado">
            <xsl:text>    {&#10;</xsl:text>
            <xsl:text>"nombre":"</xsl:text>
            <xsl:value-of select="nombre"/>
            <xsl:text>&#10;</xsl:text>

            <xsl:text>puesto": "</xsl:text>
            <xsl:value-of select="puesto"/>

            <xsl:text>&#10;</xsl:text>
            <xsl:text>salario": "</xsl:text>
            <xsl:value-of select="salario"/>

            <xsl:text>&#10;</xsl:text>
            <xsl:text>resumen": "</xsl:text>
            <xsl:value-of select="perfil"/>

            <xsl:text>&#10;</xsl:text>
            <xsl:text>categoria": "</xsl:text>
            <xsl:text>{&#10;</xsl:text>
                <xsl:text>departamento": "</xsl:text>
                <xsl:value-of select="@departamento"/>
                
                <xsl:text>&#10;</xsl:text>
                <xsl:text>nivel": "</xsl:text>
                <xsl:choose>
                <xsl:when test="anyosExperiencia &gt; 5">Senior</xsl:when>
                <xsl:when test="stock &lt; 5">junior</xsl:when>
            </xsl:choose>
        </xsl:for-each>
        </xsl:template> 
</xsl:stylesheet>
