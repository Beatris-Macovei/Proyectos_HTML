<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
        <head>
                <style>
                    table, th, td{ border: 1px solid; } 
                    .primera { background-color: pink; }
                </style>
            </head>
            <body>
                Componentes informaticos-Total: <xsl:value-of select="count(tienda/componente)"/> componentes
                <table>
                    <caption>Lista de componentes</caption>
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Marca</th>
                            <th>Categoria</th>
                            <th>Stock</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="tienda/componente">
                            <xsl:sort select="@precio" order="descending"/>
                            <xsl:if test="@categoria != 'Placa Base'">
                                <tr class="primera">
                                    <xsl:if test="@categoria='Procesador' or @categoria='Almacenamiento'">
                                        <xsl:attribute name="class">primera</xsl:attribute>
                                    </xsl:if>
                                        <td>
                                            <xsl:value-of select="nombre" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="marca" />
                                        </td>
                                        <td>
                                            <xsl:value-of select="@categoria" />
                                        </td>
                                        
                                        <td>
                                            <xsl:value-of select="stock" />
                                        </td>
                                </tr>
                            </xsl:if>
                        </xsl:for-each>
                    </tbody>
                    
                    <tfoot>
                            <tr>
                                <td colspan="3">Total stock: </td>
                                <td>
                                    <strong><xsl:value-of select="sum(//stock)"/></strong>
                                </td>
                            </tr>
                    </tfoot>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
