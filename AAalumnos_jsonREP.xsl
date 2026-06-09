<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:template match="/">
<xsl:text>{
  "centro": "</xsl:text><xsl:value-of select="centro/@nombre"/><xsl:text>",
  "curso": "</xsl:text><xsl:value-of select="centro/@curso"/><xsl:text>",
  "alumnos": [
</xsl:text>
        <xsl:for-each select="//alumno[grupo = 'DAW2']">
<xsl:text>    {
      "nombre": "</xsl:text><xsl:value-of select="nombre"/><xsl:text>",
      "grupo": "</xsl:text><xsl:value-of select="grupo"/><xsl:text>",
      "nota": </xsl:text><xsl:value-of select="nota"/><xsl:text>,
      "convocatoria": "</xsl:text><xsl:value-of select="convocatoria"/><xsl:text>",
      "comentario": "</xsl:text><xsl:value-of select="substring(observaciones, 1, 20)"/><xsl:text>",
      "evaluacion": {
        "resultado": "</xsl:text>
                <xsl:choose>
                    <xsl:when test="nota >= 5"><xsl:text>aprobado</xsl:text></xsl:when>
                    <xsl:otherwise><xsl:text>suspenso</xsl:text></xsl:otherwise>
                </xsl:choose>
<xsl:text>",
        "mencion": "</xsl:text>
                <xsl:choose>
                    <xsl:when test="nota >= 9"><xsl:text>matricula</xsl:text></xsl:when>
                    <xsl:when test="nota >= 5"><xsl:text>aprobado</xsl:text></xsl:when>
                    <xsl:otherwise><xsl:text>suspenso</xsl:text></xsl:otherwise>
                </xsl:choose>
<xsl:text>"
      }
    }</xsl:text>
            <xsl:if test="position() != last()"><xsl:text>,
</xsl:text></xsl:if>
        </xsl:for-each>
<xsl:text>
  ]
}
</xsl:text>
    </xsl:template>

</xsl:stylesheet>
