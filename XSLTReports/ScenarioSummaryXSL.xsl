<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>

<blockquote>

<style type='text/css'>
a:link {COLOR: #0000FF}a:visited {COLOR: #810541}a:hover {COLOR: #00FF00}a:active {COLOR: #0000FF}
</style>

<head>

<title> Automation Execution Results</title>
</head>
<body bgcolor = "#F0F8FF">

<p align = "center"/><table align="center" border="1" bordercolor="#000000" id="table1" width="900" height="31" cellspacing="0" bordercolorlight="#FFFFFF">

<tr>

<td COLSPAN = "6" bgcolor ="red">
<p align="center"><font color="#FFFFFF" size="4" face= "Copperplate Gothic Bold"><xsl:value-of select="scenariosummary/project"/> </font></p>
</td>

</tr>

<tr>

<td COLSPAN = "2" bgcolor ="blue">
<p align="center"><b><font color="white" size="2" face= "Verdana"> Date: <xsl:value-of select="scenariosummary/starttime"/></font></b></p>
</td>

<td COLSPAN = "4" bgcolor = "blue">
<p align="center"><b><font color="white" size="2" face= "Verdana"> Total Execution Time: <xsl:value-of select="scenariosummary/totalexecutiontime"/></font></b></p>
</td>

</tr>

<tr bgcolor="red">

<td width="400">
<p align="center"><b><font color = "white" face="Arial Narrow" size="2">Test Case ID</font></b></p>
</td>

<td width="400">
<p align="center"><b><font color = "white" face="Arial Narrow" size="2">Description</font></b></p>
</td>

<td width="400">
<p align="center"><b><font color = "white" face="Arial Narrow" size="2">Execution Time</font></b></p>
</td>

<td width="400">
<p align="center"><b><font color = "white" face="Arial Narrow" size="2">Status</font></b></p>
</td>

</tr>

<xsl:for-each select="scenariosummary/testcases/testcase">

<tr bgcolor = "lightskyblue">
<td width="400">
<p align="center">

<a target="about_blank">
  <xsl:attribute name="href">
    <xsl:value-of select="link"/>
  </xsl:attribute>
<b><font face="Verdana" size="2">
  <xsl:value-of select="id"/>
</font></b></a>

</p>
</td>

<td width="400">
<p align="center"><font face="Verdana" size="2"><xsl:value-of select="description"/>
</font></p></td>

<td width="400">
<p align="center"><font face="Verdana" size="2"><xsl:value-of select="executiontime"/>
</font></p></td>

<td width="400">
<p align="center"><b>
<xsl:choose>
        <xsl:when test="status='Pass'">     
		<font face="Verdana" size="2" color="#008000">
		<xsl:value-of select="status"/></font>   		
        </xsl:when>
	<xsl:when test="status='Fail'">     
		<font face="Verdana" size="2" color="#FF0000">
		<xsl:value-of select="status"/></font>    		
        </xsl:when>
        <xsl:otherwise>
          <font face="Verdana" size="2" color="#8A4117">
	  <xsl:value-of select="status"/></font>
        </xsl:otherwise>
</xsl:choose>

</b></p>

</td>

</tr>

</xsl:for-each>

</table>

<table align="center" border="1" bordercolor="#000000" id="table1" width="900" height="31" cellspacing="0" bordercolorlight="#FFFFFF">
<tr bgcolor ="blue">

<td width="400">
<p align="center"><b><font color="white" size="2" face= "Verdana">Passed : <xsl:value-of select="scenariosummary/summary/passed"/>
</font></b></p></td>

<td width="400">
<p align="center"><b><font color="white" size="2" face= "Verdana">Failed : <xsl:value-of select="scenariosummary/summary/failed"/>
</font></b></p></td>
</tr>

</table>

</body>
</blockquote>
</html>

</xsl:template>

</xsl:stylesheet> 