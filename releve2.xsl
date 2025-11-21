<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="3.0">
    <xsl:template match="/releve">
        <html>
            <head>
                <title>Relvè Bancaire</title>
            </head>
            <body>
                <p>RIB: <xsl:value-of select="@RIB"/></p>
                <p>Date du relevé : <xsl:value-of select="dateReleve"/></p>
                <p>Solde : <xsl:value-of select="solde"/></p>
                
                <h1>Liste des opérations Crédit:</h1>
                
                <table border="1" width="90%">
                    <tr>
                        <th>Date</th>
                        <th>Description</th>
                        <th>Montant</th>
                        
                    </tr>
                    <xsl:for-each select="operations/operation[@type='CREDIT']">
                        <tr>
                            <td><xsl:value-of select="@date"/></td>
                            <td><xsl:value-of select="@description"/></td>
                            <td><xsl:value-of select="@montant"/></td>
                            
                        </tr>
                    </xsl:for-each>
                    
                </table>
                
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>