<?xml version="1.0" encoding="UTF-8"?>
    <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
      <body>
      <h2 style="text-align:center;color:red;font-family:Times New Roman">Table 1</h2>
        <table border="1" style="border:2px solid blue; margin-left:400px; margin-top:50px">
        <tr style="background-color:turquoise">
            <th style="padding:30px">Product Name</th>
            <th style="padding:30px">Manufacturer id</th>
            <th style="padding:30px">Description</th>
            <th style="padding:30px">USD price</th>
        </tr>
        <xsl:for-each select="products/product">
            <xsl:if test="@shippable='true'">
            <tr>
            <td><xsl:value-of select="productName"/></td>
            <td><xsl:value-of select="manufacturer"/></td>
            <td><xsl:value-of select="description"/></td>
            <td><xsl:value-of select="prices/price[1]"/></td>
            </tr>
            </xsl:if>
        </xsl:for-each> 
        </table>
 
        <h2 style="text-align:center;color:red;font-family:Times New Roman">Table 2</h2>
        <table border="1" style="border:2px solid blue; margin-left:450px; margin-top:50px">
        <tr style="background-color:turquoise">
            <th style="padding:30px">Product Name</th>
            <th style="padding:30px">Description</th>
            <th style="padding:30px">USD price</th>
            <th style="padding:30px">Euro price</th>
        </tr>
        <xsl:for-each select="products/product">
            <xsl:if test="manufacturer[@id='acme']">
            <tr>
            <td><xsl:value-of select="productName"/></td>
            <td><xsl:value-of select="description"/></td>
            <td><xsl:value-of select="prices/price[1]"/></td>
            <td><xsl:value-of select="prices/price[3]"/></td>
            </tr>
            </xsl:if>
        </xsl:for-each> 
        
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>   