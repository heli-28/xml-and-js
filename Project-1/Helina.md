Helina Gandhi (N01516558)

Hello, I created xslt file to display data in he tabular format. 
Along with that I created HTML file which will load the data dynamically from xml file.

<!-- zoo.xsl -->
1. 
For xslt file, Initially I linked zoo.xsl along with its location to the zoo.xml file. 

version="1.0":Specifies the version of XSLT required by this stylesheet.

The <xsl:template> element is used to create the template. 
The  match attribute is used to associate the template with the XML element. You can also use the match attribute  to define a template for the entire XML document. 
The  match attribute value is  XPath expression (i.e. match="/" defines the whole document).

xmlns:xsl="http://www.w3.org/1999/XSL/Transform": A pseudo-attribute required to identify the document as an XSLT stylesheet

Then, initiated with necessary and required tags such as html,body,h2,table,tr(table row),th(table head),td(table data). 

Used colspan to merge columns.

Also, gave the inline style such as border,color,bgcolor,text-align.

Table is created then added data to it.

XSL <xsl:for-each> element is used to select every XML element of a specified node-set.

Whereas <xsl:value-of> element is also used to extract the value of an XML element and add it to the output stream. Its tags are self closing. So when you write <xsl:valu-of select= " Write TAG Name in it"/>

Also, used unordered listing (ul),(li) so that we can have a better picture of data in that particular row.

At the end closing all the tags.
![image info](../assets/xslt_tablular.png)

<!-- zoo.html  -->
For html file used tags such as html, head,body,table,script(to write the script for the action to be performed to load the data dynamically).

XMLHttpRequest object is used to request data from a web server.
onreadystatechange event is fired whenever the readyState property of the XMLHttpRequest changes.

The onreadystatechange event is triggered four times, one time for each change in the readyState.open() initializes a newly-created request.

open() initializes a newly-created request such as for here it opens zoo.xml.


Took the response from xml and added it the xml doc.

If you want to return the text of an element, text is always inside a Text node, and you will have to return the Text node's node value (element.childNodes[0].nodeValue).
So, here i have placed those get element by tag name  into the for loop placing it in tablular form.

Adding the Id of the table using innerhtml as it return the html content of an element.

Closing all the tags.

![image info](../assets/html_loader.png)
