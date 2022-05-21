
-- Difference between DTD and XSD --

1. The major difference between DTD (Document Type Definition) and XSD (XML Schema Definition) is that DTD defines the structure of XML whereas other describe the structure and and content of XML.

2. DTD has less control over XML than XSD.

3. DTD is derived from SGML (Standard Generalized Markup Language) syntax so it is tough to learn on the other hand XSD is easy as it is similar to XML.

4. XSD is extensible whereas DTd is not.  

5. XSD does support Namespace and datatypes whereas DTD does not. 

-- What I did in DTD --
I defined element tags and their respective attributes tags.

<! ELEMENT ELEMENT_NAME SUB_ELEMENT+> 
Here, + inidcates multiple sub-elements.

-- What I did in XSD --
Described the parent element as ComplexType and it has to be maintained in structure so Wrote Sequence.
For multiple element, minOccurs="0" and maxOccurs="unbounded"
