<?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE stylesheet [<!ENTITY % w3centities-f PUBLIC "-//W3C//ENTITIES Combined Set//EN//XML" "http://www.w3.org/2003/entities/2007/w3centities-f.ent">%w3centities-f;]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:date="http://exslt.org/dates-and-times">
<xsl:output method="html" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" media-type="application/html+xml" encoding="utf-8" omit-xml-declaration="yes" indent="yes"/>
<xsl:template match="meta">
<h1>Vulnerability title: <xsl:value-of select="title"/> in <xsl:value-of select="vendor"/><xsl:text> </xsl:text><xsl:value-of select="product"/></h1>
<table border="1">
<tr><td>CVE:</td><td><xsl:value-of select="cve"/></td></tr>
<tr><td>Vendor:</td><td><xsl:value-of select="vendor"/></td></tr>
<tr><td>Product:</td><td><xsl:value-of select="product"/></td></tr>
<tr><td>Affected version:</td><td><xsl:value-of select="affectedversion"/></td></tr>
<tr><td>Fixed version:</td><td><xsl:value-of select="fixedversion"/></td></tr>
<tr><td>Reported by:</td><td><xsl:value-of select="reporter"/></td></tr>
</table>
</xsl:template>
<xsl:template match="description">
<xsl:copy-of select="."/>
</xsl:template>
<xsl:template match="impact">
<h3>Impact:</h3>
<xsl:copy-of select="."/>
</xsl:template>
<xsl:template match="exploit">
<h3>Exploit:</h3>
<xsl:copy-of select="."/>
</xsl:template>
<xsl:template match="remediation">
<h3>Remediation:</h3>
<xsl:copy-of select="."/>
</xsl:template>
<xsl:template match="details">
<h3>Details:</h3>
<xsl:apply-templates select="description"/>
<xsl:apply-templates select="impact"/>
<xsl:apply-templates select="exploit"/>
<xsl:apply-templates select="remediation"/>
</xsl:template>
<xsl:template match="status">
<h3>Vendor status:</h3>
<table border="1">
<xsl:for-each select="update">
<tr><td><xsl:value-of select="date"/></td><td><xsl:value-of select="comment"/></td></tr>
</xsl:for-each>
<tr><td><xsl:value-of select="substring(date:date-time(), 9, 2)"/>/<xsl:value-of select="substring(date:date-time(), 6, 2)"/>/<xsl:value-of select="substring(date:date-time(), 1, 4)"/></td><td>Published</td></tr>
</table>
</xsl:template>
<xsl:template match="advisory">
<div>
<xsl:apply-templates select="meta"/>
<xsl:apply-templates select="details"/>
<xsl:apply-templates select="status"/>
</div>
<div>
<h5>Copyright:</h5>
<p>Copyright &copy; [ORGANISATION] <xsl:value-of select="date:year()"/>, All rights reserved worldwide. Permission is hereby granted for the electronic redistribution of this information. It is not to be edited or altered in any way without the express written consent of [ORGANISATION].</p>
<h5>Disclaimer:</h5>
<p>The information herein contained may change without notice. Use of this information constitutes acceptance for use in an AS IS condition. There are NO warranties, implied or otherwise, with regard to this information or its use. Any use of this information is at the user's risk. In no event shall the author/distributor ([ORGANISATION]) be held liable for any damages whatsoever arising out of or in connection with the use or spread of this information.</p>
</div>
</xsl:template>
<xsl:template match="/">
<html>
<body>
<xsl:apply-templates select="advisory"/>
</body>
</html>
</xsl:template>
</xsl:stylesheet>