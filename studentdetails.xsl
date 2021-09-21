<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h2> Student Marks collection</h2>
<table border="1">
<tr bgcolor="red">
<th align="left">name</th>
<th align="left">marks</th>
</tr>
<xsl:for-each select="student/students">
<tr>
<td><xsl:value-of select="name"/></td>
<xsl:choose>
<xsl:when test="marks &gt; 20">
<td bgcolor="yellow"><xsl:value-of select="marks"/></td>
</xsl:when>
<xsl:when test="year &gt; 40">
<td bgcolor="magneta"><xsl:value-of select="marks"/></td>
</xsl:when>
<xsl:otherwise>
<td><xsl:value-of select="name"/></td>
</xsl:otherwise>
</xsl:choose>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>