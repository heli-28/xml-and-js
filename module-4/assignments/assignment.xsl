<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1 style="color:blue;margin-left:650px;box-shadow:5px 5px 5px 5px cyan;width:10%">Catalog</h1>
                <ul>
                    <xsl:for-each select="catalog/product">
                    <h3 style="margin-left:100px;font-style:italic;background:pink;color:yellow">Product ID:-<xsl:value-of select="@product_id"/></h3>
                    <p style="margin-left:100px;font-style:bolder;background:pink;color:yellow">Description:-<xsl:value-of select="@description"/></p>
                    <li>
                    <article>
                        <xsl:for-each select="catalog_item">
                        <table border='1' style="padding:20px; font-family:Helvetica;margin-left:100px;margin-bottom:50px">
                            <tr style="padding:20px;background:cyan">
                                <th>Item Number</th>
                                <th>Price</th>
                                <th>Gender</th>
                                <th>Small</th>
                                <th>Medium</th>
                                <th>Large</th>
                                <th>Extra Large</th>
                            </tr>
                            <tr>
                                <xsl:for-each select="size">
                                <tr>
                                    <td><xsl:value-of select="../item_number"/></td>
                                    <td><xsl:value-of select="../price"/></td>
                                    <xsl:choose>
                                    <xsl:when test="../@gender='Men'">
                                        <td>M</td>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <td>W</td>
                                        </xsl:otherwise>
                                        </xsl:choose>
                                        <xsl:choose>
                                            <xsl:when test="@description='Small'">
                                            <td>
                                                <xsl:value-of select="@description"/>
                                                <table border='1' style="padding:20px;font-style:italic">
                                                    <th style="background:cyan">Color</th>
                                                    <th style="background:cyan">Image</th>
                                                    <xsl:for-each select="color_swatch">
                                                    <tr>
                                                        <td><xsl:value-of select="." /></td>
                                                        <td><xsl:value-of select="@image"/></td>
                                                    </tr>
                                                    </xsl:for-each>
                                                </table>
                                            </td>
                                            </xsl:when>
                                            <xsl:when test="@description='Medium'">
                                            <td/>
                                            <td><xsl:value-of select="@description"/>
                                                <table border='1' style="padding:20px;font-style:italic">
                                                    <th style="background:cyan">Color</th>
                                                    <th style="background:cyan">Image</th>
                                                    <xsl:for-each select="color_swatch">
                                                    <tr>
                                                        <td><xsl:value-of select="." /></td>
                                                        <td><xsl:value-of select="@image"/></td>
                                                    </tr>
                                                    </xsl:for-each>
                                                </table>
                                            </td>
                                            <td/>
                                            <td/>
                                            </xsl:when><xsl:when test="@description='Large'">
                                            <td/>
                                            <td/>
                                            <td><xsl:value-of select="@description"/>
                                                <table border='1' style="padding:20px;font-style:italic">
                                                    <th style="background:cyan">Color</th>
                                                    <th style="background:cyan">Image</th>
                                                    <xsl:for-each select="color_swatch">
                                                    <tr>
                                                        <td><xsl:value-of select="." /></td>
                                                        <td><xsl:value-of select="@image"/></td>
                                                    </tr>
                                                    </xsl:for-each>
                                                </table>
                                            </td>
                                            <td/>
                                            </xsl:when><xsl:when test="@description='Extra Large'">
                                            <td/>
                                            <td/>
                                            <td/>
                                            <td><xsl:value-of select="@description"/>
                                                <table border='1' style="padding:20px;font-style:italic">
                                                    <th style="background:cyan">Color</th>
                                                    <th style="background:cyan">Image</th>
                                                    <xsl:for-each select="color_swatch">
                                                    <tr>
                                                        <td><xsl:value-of select="." /></td>
                                                        <td><xsl:value-of select="@image"/></td>
                                                    </tr>
                                                    </xsl:for-each>
                                                </table>
                                            </td>
                                            </xsl:when>
                                        </xsl:choose>
                                    </tr>
                                    </xsl:for-each>
                                </tr>
                            </table>
                            </xsl:for-each>
                        </article>
                    </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>