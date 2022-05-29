
Here, Xml is linked with xsl file so we can run xml file and see the desired output.
XSL(Extensible Stylesheet Language Family) is a form of a language for expressing style sheets.

XSL is important as it has capabilities to convert XML to paper-based formats such as PDF.
Here, as per the questons, 
html tags has been used, 
For list <ul> as unordered list is used.
For table, <table> is used.
For table header <th> is used.
For table data <td> is used.
For table row <tr> is used.

Inline style has been added to the xsl file styles such as padding, color, background are used.

To get the attribute value of product_id "<xsl:value-of select="@product_id"/>" is used.

The "xsl:when" element is used in conjunction with "xsl:choose" and "xsl:otherwise" to express multiple conditional tests.

- main title is "Catalog"
![image info](../assets/main.png)

- render table of catalog items with columns: item number, price, gender, small, medium, large, extra large (if column item is not present in item, then display empty cell)
![image info](../assets/Table for Men.png)
![image info](../assets/Table for Women.png)

- inside size columns (small, medium, large, and extra large) display subtable with 2 columns: color and image
![image info](../assets/color & image.png)