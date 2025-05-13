<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"> 
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<xsl:template match = "/">
<html> 
<body> 
<h2>Car Showroom</h2> 
<table border = "1"> 
<tr bgcolor = "#9acd32"> 
<th>ID</th> 
<th>Brand</th> 
<th>Model</th> 
<th>Year</th> 
<th>Color</th> 
<th>Fuel</th>
</tr>
<xsl:for-each select="carShowroom/car"> 
<tr> 
<td><xsl:value-of select="@id"/></td> 
<td><xsl:value-of select="brand"/></td> 
<td><xsl:value-of select="model"/></td>
<td><xsl:value-of select="year"/></td> 
<td><xsl:value-of select="color"/></td> 
<td><xsl:value-of select="fuel"/></td>
</tr> 
</xsl:for-each>
</table> 
</body> 
</html> 
</xsl:template>  
</xsl:stylesheet>
