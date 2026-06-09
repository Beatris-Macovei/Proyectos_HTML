 <?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
            <title>Empleados</title>

            <style>
                    table { 
                        border-collapse: collapse; 
                        width: 100%; 
                        max-width: 600px; 
                        margin: 20px auto; 
                        text-align: left; 
                    }

                    th, td { 
                        border: 1px solid black; 
                        padding: 8px; 
                    }

                    .verde { 
                        background-color: light green; 
                    }
                    .negrita { 
                        font-weight: bold; 
                    }
                    .cabecera { 
                        text-align: center; margin-bottom: 10px; 
                    }

                </style>
            </head>
            <body>
                <div class="cabecera">
                    Hay <xsl:value-of select="count(//empleado)"/> empleados
                </div>
                <table>
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Puesto</th>
                            <th>Departamento</th>
                            <th>Salario</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="empresa/empleado">
                            <xsl:sort select="salario" data-type="number" order="descending"/>
                            <tr>
                                <xsl:if test="@departamento = 'desarrollo'">
                                    <xsl:attribute name="class">verde</xsl:attribute>
                                </xsl:if> 
                               <td><xsl:value-of select="nombre"/></td>
                               
                                <td><xsl:value-of select="puesto"/></td>
                                <td><xsl:value-of select="@departamento"/></td>
                                <td><xsl:value-of select="salario"/></td> 
                                <xsl:choose>
                                        <xsl:when test="@jornada = 'parcial'">
                                            <span class="cursiva"></span>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="marca"/>
                                        </xsl:otherwise>
                                    </xsl:choose>  
                                
                            
                            </tr>
                        </xsl:for-each>
                    </tbody>
                     <tfoot>
                        <tr>
                            <th colspan="3">Salario medio:</th>
                            <th><xsl:value-of select="format-number(sum(//salario) div count(//salario), '#.00')"/></th>
                        </tr>
                    </tfoot>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
