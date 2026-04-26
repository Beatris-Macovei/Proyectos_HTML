<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
        <head>
                <style>
                    table, th, td{ border: 1px solid; } 
                </style>
        </head>
        <body>
            <table>
                <thead>
                    <tr>
                        <th>Titulo</th>
                        <th>ISBN</th>
                        <th>Autor</th>
                        <th>Precio</th>
                        <th>Disponible</th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="biblioteca/libro">
                    <tr>
                            <td>
                                <xsl:value-of select="titulo" />
                            </td>
                            <td>
                                <xsl:value-of select="@isbn" />
                            </td>
                            <td>
                                <xsl:value-of select="concat(autor/nombre, ' ', autor/apellido)"/>
                            </td>
                            <td>
                                <xsl:value-of select="precio" />
                            </td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="disponible = 'true'">sí</xsl:when>
                                    <xsl:otherwise>no</xsl:otherwise>
                                </xsl:choose>
                            </td>
                    </tr>
                    </xsl:for-each>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="3">Total precio:</td>
                        <td>
                            <xsl:value-of select="sum(biblioteca/libro/precio)"/>
                        </td>
                        <td></td>
                    </tr>
            </tfoot>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>
