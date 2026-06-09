<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html lang="es">
        <head>
            <meta charset="UTF-8"/>
            <title>Alumnos</title>
            <style>
                body {
                    font-family: Arial, sans-serif;
                    margin: 30px;
                }
                h2 {
                    color: #333;
                }
                table {
                    border-collapse: collapse;
                    width: 60%;
                }
                th, td {
                    border: 1px solid #999;
                    padding: 8px 12px;
                    text-align: left;
                }
                th {
                    background-color: #4F726C;
                    color: white;
                }
                tfoot td {
                    font-weight: bold;
                    background-color: #f0f0f0;
                }
                .aprobado {
                    background-color: #c6efce;
                }
                .suspenso {
                    background-color: #ffc7ce;
                }
                .cursiva {
                    font-style: italic;
                }
            </style>
        </head>
        <body>
            <p><strong>Total de alumnos: <xsl:value-of select="count(//alumno)"/></strong></p>
            <table>
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Grupo</th>
                        <th>Nota Final</th>
                        <th>Convocatoria</th>
                        <th>Resultado</th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:apply-templates select="//alumno">
                        <xsl:sort select="nota" data-type="number" order="descending"/>
                    </xsl:apply-templates>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="4">Nota media:</td>
                        <td>
                            <xsl:value-of select="format-number(sum(//nota) div count(//alumno), '0.##')"/>
                        </td>
                    </tr>
                </tfoot>
            </table>
        </body>
        </html>
    </xsl:template>

    <xsl:template match="alumno">
        <xsl:variable name="clase">
            <xsl:choose>
                <xsl:when test="nota >= 5">aprobado</xsl:when>
                <xsl:otherwise>suspenso</xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <tr class="{$clase}">
            <td>
                <xsl:choose>
                    <xsl:when test="grupo = 'DAW2'">
                        <span class="cursiva"><xsl:value-of select="nombre"/></span>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="nombre"/>
                    </xsl:otherwise>
                </xsl:choose>
            </td>
            <td><xsl:value-of select="grupo"/></td>
            <td><xsl:value-of select="nota"/></td>
            <td><xsl:value-of select="convocatoria"/></td>
            <td>
                <xsl:choose>
                    <xsl:when test="nota >= 5">APROBADO</xsl:when>
                    <xsl:otherwise>SUSPENSO</xsl:otherwise>
                </xsl:choose>
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>
