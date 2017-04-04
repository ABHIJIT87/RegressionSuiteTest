<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<blockquote>

<style type='text/css'>
a:link {COLOR: #0000FF}a:visited {COLOR: #810541}a:hover {COLOR: #00FF00}a:active {COLOR: #0000FF}
table td {word-wrap:break-word;}
</style>

<head>

<title> Test Case Automation Execution Results</title>
<script>
</script>
</head>

<body bgcolor = "#F0F8FF">


<p align = "center"/><table align="center" border="1" bordercolor="#000000" id="table1" width="1200" height="31" cellspacing="0" bordercolorlight="#FFFFFF">
<tr>
<td COLSPAN = "6" bgcolor ="red">
<p align="center"><font color="#FFFFFF" size="4" face= "Copperplate Gothic Bold"><xsl:value-of select="teststeps/project"/> - <xsl:value-of select="teststeps/testcaseid"/> Automation Execution Results</font><font face= "Copperplate Gothic Bold"></font> </p>
</td>
</tr>
<tr>
<td COLSPAN = "6" bgcolor ="blue">
<p align="center"><b><font color="#FFFFFF" size="2" face= "Verdana">DATE: <xsl:value-of select="teststeps/timestamp"/></font></b></p>
</td>
</tr>
</table>

<table align="center" border="1" bordercolor="#000000" id="table1" width="1200" height="31" cellspacing="0" bordercolorlight="#FFFFFF">
<tr bgcolor="red">
<td width="400">
<p align="center"><b><font color="white" face="Arial Narrow" size="2">Iteration</font></b></p>
</td>
<td width="400">
<p align="center"><b><font color="white" face="Arial Narrow" size="2">Step Count</font></b></p>
</td>
<td width="400">
<p align="center"><b><font color="white" face="Arial Narrow" size="2">Step Description</font></b></p>
</td>
<td width="400">
<p align="center"><b><font color="white" face="Arial Narrow" size="2">Expected Result</font></b></p>
</td>
<td width="400">
<p align="center"><b><font color="white" face="Arial Narrow" size="2">Actual Result</font></b></p>
</td>
<td width="400">
<p align="center"><b><font color="white" face="Arial Narrow" size="2">Status</font></b></p>
</td>
</tr>

<xsl:for-each select="teststeps/tc">

<tr bgcolor ="lightskyblue">
<td width="400">
<p align="center"><font face="Verdana" size="2"><xsl:value-of select="iteration"/></font></p>
</td>

<td width="400">
<p align="center">

<font face="Verdana" size="2"><xsl:value-of select="stepno"/></font>

</p>
</td>

<td width="500">
<p align="left"><font face="Verdana" size="2"><xsl:value-of select="description"/></font></p>
</td>

<td width="200">

<p align="left"><font face="Verdana" size="2"><xsl:value-of select="expected"/></font></p>


</td>


<td width="400">
<p align="center"><font face="Verdana" size="2">
<a>
  <xsl:attribute name="href">
  <xsl:value-of select="detailreport"/>
  </xsl:attribute>
<xsl:value-of select="actual"/>
</a>
</font></p>
</td>


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
</b>
</p>
</td>

</tr>

</xsl:for-each>

<tr bgcolor ="blue">
<td COLSPAN = "6">
<p align="center"><b><font color="white" size="2" face= "Verdana">Execution Time: <xsl:value-of select="teststeps/totalexecutiontime"/></font></b>
</p>
</td>
</tr>

</table>

</body>
</blockquote>
</html>

</xsl:template>

</xsl:stylesheet> 