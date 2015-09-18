<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:date="http://exslt.org/dates-and-times">
<xsl:output method="text" indent="no"/>
<xsl:template match="meta">
# Vulnerability title: <xsl:value-of select="title"/> In <xsl:value-of select="vendor"/><xsl:text> </xsl:text><xsl:value-of select="product"/>
CVE:|<xsl:value-of select="cve"/>
Vendor:|<xsl:value-of select="vendor"/>
Product:|<xsl:value-of select="product"/>
Affected version:|<xsl:value-of select="affectedversion"/>
Fixed version:|<xsl:value-of select="fixedversion"/>
Reported by:|<xsl:value-of select="reporter"/>
</xsl:template>
<xsl:template match="description">
<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="impact">
### Impact:
<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="exploit">
### Exploit:
<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="remediation">
### Remediation:
<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="details">
### Details:
<xsl:apply-templates select="description"/>
<xsl:apply-templates select="impact"/>
<xsl:apply-templates select="exploit"/>
<xsl:apply-templates select="remediation"/>
</xsl:template>
<xsl:template match="status">
### Status:
<xsl:for-each select="update">
- <xsl:value-of select="date"/> - <xsl:value-of select="comment"/><xsl:text>
</xsl:text>
</xsl:for-each>
- <xsl:value-of select="substring(date:date-time(), 9, 2)"/>/<xsl:value-of select="substring(date:date-time(), 6, 2)"/>/<xsl:value-of select="substring(date:date-time(), 1, 4)"/> - Published
</xsl:template>
<xsl:template match="advisory">
<xsl:apply-templates select="meta"/>
<xsl:apply-templates select="details"/>
<xsl:apply-templates select="status"/>
Copyright:
Copyright (c) [ORGANISATION] <xsl:value-of select="date:year()"/>, All rights reserved worldwide. Permission is hereby granted for the electronic redistribution of this information. It is not to be edited or altered in any way without the express written consent of [ORGANISATION].

Disclaimer:
The information herein contained may change without notice. Use of this information constitutes acceptance for use in an AS IS condition. There are NO warranties, implied or otherwise, with regard to this information or its use. Any use of this information is at the user's risk. In no event shall the author/distributor ([ORGANISATION]) be held liable for any damages whatsoever arising out of or in connection with the use or spread of this information.
</xsl:template>
<xsl:template match="/">
<html>
<body>
<xsl:apply-templates select="advisory"/>
</body>
</html>
</xsl:template>
</xsl:stylesheet>