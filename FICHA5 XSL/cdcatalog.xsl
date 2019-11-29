<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <body>
                <h2>My CD Collection (<xsl:value-of select="count(/CATALOG/CD)"/>)</h2>
                <table border="1">
                    <tr>
                        <th>Title</th>
                        <th>Artist</th>
                        <th>Year</th>
                        <th>Country</th>
                        <th>Price</th>
                        <th>Company</th>
                    </tr>
                    
                    <xsl:for-each select="CATALOG/CD">
                        <xsl:sort select="COUNTRY"/>
                        <xsl:choose>
                            
                            <xsl:when test="PRICE &lt;8">
                                <tr bgcolor="#85e085">
                                    <td>
                                        <xsl:value-of select="TITLE"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="ARTIST"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="YEAR"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="COUNTRY"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="PRICE"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="COMPANY"/>
                                    </td>
                                    
                                </tr>
                            </xsl:when>
                            <xsl:when test="PRICE &gt;10">
                                <tr bgcolor="#ff1a1a">
                                    <td>
                                        <xsl:value-of select="TITLE"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="ARTIST"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="YEAR"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="COUNTRY"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="PRICE"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="COMPANY"/>
                                    </td>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise >
                                <tr bgcolor="#ffff4d">
                                    <td>
                                        <xsl:value-of select="TITLE"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="ARTIST"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="YEAR"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="COUNTRY"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="PRICE"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="COMPANY"/>
                                    </td>
                                </tr>
                            </xsl:otherwise>
                            
                        </xsl:choose>
                        
                        
                        
                        
                       
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>