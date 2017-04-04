<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<blockquote>

<style type='text/css'>
a:link {COLOR: #0000FF}a:visited {COLOR: #810541}a:hover {COLOR: #00FF00}a:active {COLOR: #0000FF}
</style>

<title> Automation Test Result </title>
<body bgcolor= 	"#F0F8FF">

<Table align= "center" border ="1" width="100%" height = "10" BORDERCOLOR="#FFFFFF" CELLSPACING="0" CELLPADDING="5" STYLE='Font-Size:12pt Border-Colapse:Colapse'>
			
		<Thead BGCOLOR="blue" STYLE='Font-Weight: Bold Color: #FFFFFF'>
			<TH><font color="white" face="Arial Narrow" size="5">AUTOMATED TEST EXECUTION SUMMARY</font> </TH>
		</Thead>

	</Table>

	<img align = "left" src = "..\..\..\Logo\Cognizant_Logo.jpg" alt = ""/><img align = "right" src = "..\..\..\Logo\Client_Logo.jpg" alt = ""/>
	<br/><br/>
	
	<Table align = "center" width = "40%" border="0" CELLSPACING='0' CELLPADDING='3'>
		
		<tr align = "center" ><font face="Arial Narrow" size="3">
			<td align = "left" width = "900">
			<b><font color = "red">Start Time: </font></b><font color = "blue"><xsl:value-of select="currentrunresults/executiontime/start"/></font><br></br>
			<b><font color = "red">End Time:  </font></b><font color = "blue"><xsl:value-of select="currentrunresults/executiontime/end"/></font><br></br>
			<b><font color = "red">Execution Time:  </font></b><font color = "blue"><xsl:value-of select="currentrunresults/executiontime/total"/></font>
			</td>
			<td align = "left" width = "400"></td>
			<td align = "left" width = "900">
			<b><font color = "red">Application Name:  </font></b><font color = "blue"><xsl:value-of select="currentrunresults/environment/application"/></font><br></br>			
			<b><font color = "red">Release:  </font></b><font color = "blue"><xsl:value-of select="currentrunresults/environment/release"/></font><br></br>
			<b><font color = "red">Build:  </font></b><font color = "blue"><xsl:value-of select="currentrunresults/environment/build"/></font>
			</td>
		</font></tr>
	</Table>

	<br/>


	<table border="1" bordercolor="#DC143C" Cellspacing = "0" STYLE='Font-Size:12pt Border-Colapse:Colapse' align="center">
		<tr>
			<td width="400" bgcolor = "#FFE4C4">
			<p align="center"/><b><font color = "blue" face="Arial Narrow" size="2">Summary of TestSuites</font></b>
			</td>
			<td width="200" bgcolor = "#FFE4C4">
			<p align="center"/><b><font color = "blue" face="Arial Narrow" size="2">Passed</font></b>
			</td>
			<td width="200" bgcolor = "#FFE4C4">
			<p align="center"/><b><font color = "blue" face="Arial Narrow" size="2">Failed</font></b>
			</td>
		</tr>

		<xsl:for-each select="currentrunresults/overallstatus/scenario">
		<tr>
			<td width="400">
			<p align="center"/><font color = "black" face="Arial Narrow" size="2"></font>
			
			<a>
  			<xsl:attribute name="href">
    			<xsl:value-of select="link"/>
  			</xsl:attribute>
			<font face="Verdana" size="2">
 				 <xsl:value-of select="name"/>
			</font>
			</a>

			</td>
			<td width="200">
			<p align="center"/><font color = "black" face="Arial Narrow" size="2"><xsl:value-of select="passed"/></font>
			</td>
			<td width="200">
			<p align="center"/><font color = "black" face="Arial Narrow" size="2"><xsl:value-of select="failed"/></font>
			</td>
		</tr>
		</xsl:for-each>

		<tr>
			<td width="400">
			<p align="center"/><b><font color = "black" face="Arial Narrow" size="2">Total</font></b>
			</td>
			<td width="200">
			<p align="center"/><b><font color = "black" face="Arial Narrow" size="2"><xsl:value-of select="currentrunresults/overallstatus/total/passed"/></font></b>
			</td>
			<td width="200">
			<p align="center"/><b><font color = "black" face="Arial Narrow" size="2"><xsl:value-of select="currentrunresults/overallstatus/total/failed"/></font></b>
			</td>
		</tr>


	</table>

	<xsl:for-each select="currentrunresults/criticalitystatus/scenario">

	<p></p>
	
	<table border="1" bordercolor= "#4169E1" Cellspacing = "0"  STYLE='Font-Size:12pt Border-Colapse:Colapse' align="center">
		<tr>
			<td width="300" bgcolor = "#B0E0E6">
			<p align="center"/><b><font color = "black" face="Arial Narrow" size="2"><xsl:value-of select="name"/> Testcases</font> </b>
			</td>
			<td width="200" bgcolor = "#B0E0E6">
			<p align="center"/><b><font color = "black" face="Arial Narrow" size="2">Critical</font></b>
			</td>
			<td width="200" bgcolor = "#B0E0E6">
			<p align="center"/><b><font color = "black" face="Arial Narrow" size="2">High</font></b>
			</td>
			<td width="200" bgcolor = "#B0E0E6">
			<p align="center"/><b><font color = "black" face="Arial Narrow" size="2">Medium</font></b>
			</td>
			<td width="200" bgcolor = "#B0E0E6">
			<p align="center"/><b><font color = "black" face="Arial Narrow" size="2">Low</font></b>
			</td>
		</tr>
		<tr>
			<td width="300" bgcolor = "#FFFFFF">
			<p align="center"/><font color = "black" face="Arial Narrow" size="2">Total Passed</font>
			</td>
			<td width="200" bgcolor = "#FFFFFF">
			<p align="center"/><font color = "black" face="Arial Narrow" size="2"><xsl:value-of select="passed/critical"/></font>
			</td>
			<td width="200" bgcolor = "#FFFFFF">
			<p align="center"/><font color = "black" face="Arial Narrow" size="2"><xsl:value-of select="passed/high"/></font>
			</td>
			<td width="200" bgcolor = "#FFFFFF">
			<p align="center"/><font color = "black" face="Arial Narrow" size="2"><xsl:value-of select="passed/medium"/></font>
			</td>
			<td width="200" bgcolor = "#FFFFFF">
			<p align="center"/><font color = "black" face="Arial Narrow" size="2"><xsl:value-of select="passed/low"/></font>
			</td>
		</tr>
		<tr>
			<td width="300" bgcolor = "#FFFFFF">
			<p align="center"/><font color = "black" face="Arial Narrow" size="2">Total Failed</font>
			</td>
			<td width="200" bgcolor = "#FFFFFF">
			<p align="center"/><font color = "black" face="Arial Narrow" size="2"><xsl:value-of select="failed/critical"/></font>
			</td>
			<td width="200" bgcolor = "#FFFFFF">
			<p align="center"/><font color = "black" face="Arial Narrow" size="2"><xsl:value-of select="failed/high"/></font>
			</td>
			<td width="200" bgcolor = "#FFFFFF">
			<p align="center"/><font color = "black" face="Arial Narrow" size="2"><xsl:value-of select="failed/medium"/></font>
			</td>
			<td width="200" bgcolor = "#FFFFFF">
			<p align="center"/><font color = "black" face="Arial Narrow" size="2"><xsl:value-of select="failed/low"/></font>
			</td>
		</tr>
	</table>

	</xsl:for-each>

</body>
</blockquote>
</html>

</xsl:template>

</xsl:stylesheet>