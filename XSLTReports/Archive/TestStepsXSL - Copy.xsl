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

<title> Test Case Automation Execution Results</title>
<script>
</script>
</head>

<body bgcolor = "#F0F8FF">


<p align = "center"/><table align="center" border="1" bordercolor="#000000" id="table1" width="900" height="31" cellspacing="0" bordercolorlight="#FFFFFF">
<tr>
<td COLSPAN = "6" bgcolor ="#687C7D">
<p align="center"><font color="#FFFFFF" size="4" face= "Copperplate Gothic Bold"><xsl:value-of select="teststeps/project"/> - <xsl:value-of select="teststeps/testcaseid"/> Automation Execution Results</font><font face= "Copperplate Gothic Bold"></font> </p>
</td>
</tr>
<tr>
<td COLSPAN = "6" bgcolor ="#687C7D">
<p align="center"><b><font color="#FFFFFF" size="2" face= "Verdana">DATE: <xsl:value-of select="teststeps/timestamp"/></font></b></p>
</td>
</tr>
</table>

<table align="center" border="1" bordercolor="#000000" id="table1" width="900" height="31" cellspacing="0" bordercolorlight="#FFFFFF">
<tr bgcolor="#687C7D">
<td width="400">
<p align="center"><b><font color="white" face="Arial Narrow" size="2">Iteration</font></b></p>
</td>
<td width="400">
<p align="center"><b><font color="white" face="Arial Narrow" size="2">Step Name</font></b></p>
</td>
<td width="400">
<p align="center"><b><font color="white" face="Arial Narrow" size="2">Description</font></b></p>
</td>
<td width="400">
<p align="center"><b><font color="white" face="Arial Narrow" size="2">Status</font></b></p>
</td>
<td width="400">
<p align="center"><b><font color="white" face="Arial Narrow" size="2">Time</font></b></p>
</td>
</tr>

<xsl:for-each select="teststeps/step">

<tr bgcolor ="#EDEEF0">
<td width="400">
<p align="center"><font face="Verdana" size="2"><xsl:value-of select="iteration"/></font></p>
</td>

<td width="400">
<p align="center">

<xsl:choose>
  <xsl:when test="status='Fail'">
	<xsl:choose>
	     <xsl:when test="stepname!='Error'">
		<a>
		    <xsl:attribute name="href">
		    <xsl:value-of select="screenshot"/>
		    </xsl:attribute>
		    <b><font face="Verdana" size="2">
	            <xsl:value-of select="stepname"/>
	             </font></b>
		</a>
	      </xsl:when>
	       <xsl:otherwise>
		    <b><font face="Verdana" size="2">
	            <xsl:value-of select="stepname"/>
	            </font></b>
	       </xsl:otherwise>
	</xsl:choose>
  </xsl:when>
  <xsl:otherwise>
	<font face="Verdana" size="2">
	<xsl:value-of select="stepname"/>
	</font>
  </xsl:otherwise>

</xsl:choose>

</p>
</td>

<td width="400">
<p align="center"><font face="Verdana" size="2"><xsl:value-of select="description"/></font></p>
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

<td width="400">
<p align="center"><font face="Verdana" size="2"><xsl:value-of select="time"/></font></p>
</td>

</tr>


</xsl:for-each>

<tr bgcolor ="#EDEEF0">
<td COLSPAN = "6">
<p align="center"><b><font size="2" face= "Verdana">Execution Time: <xsl:value-of select="teststeps/totalexecutiontime"/></font></b>
</p>
</td>
</tr>

</table>

<table align="center" border="1" bordercolor="#000000" id="table1" width="900" height="31" cellspacing="0" bordercolorlight="#FFFFFF">
<tr bgcolor ="#C6D0D1">
<td colspan ="1">
<p align="justify"><b><font color="#687C7D"  size="2" face= "Verdana">No. Of Verification Points: <xsl:value-of select="teststeps/checkpoints/total"/></font></b></p>
</td>
<td colspan ="1">
<p align="justify"><b><font color="#687C7D"  size="2" face= "Verdana">Passed: <xsl:value-of select="teststeps/checkpoints/passed"/></font></b></p>
</td>
<td colspan ="1">
<p align="justify"><b><font color="#687C7D"  size="2" face= "Verdana">Failed: <xsl:value-of select="teststeps/checkpoints/failed"/></font></b></p>
</td>
</tr>
</table>


</body>
</blockquote>
</html>

</xsl:template>

</xsl:stylesheet> 