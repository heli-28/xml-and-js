<?xml version="1.0" encoding="UTF-8"?>
    <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
      <body>
        <h2 style="border:5px solid turquoise;box-shadow:5px 5px 5px red;color:blue;font-size:30px;width:25%;text-align:center">Products</h2>
        <span style="font-style:italic; font-family:cursive">
            <xsl:for-each select="products/product">
            <h4>
            <ul>
              <li><xsl:value-of select="productName"/></li>
            </ul>
            </h4>
            </xsl:for-each>
        </span>        
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>