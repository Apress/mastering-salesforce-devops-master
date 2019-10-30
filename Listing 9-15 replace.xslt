<!-- *Listing 9-15: An example XSLT transformation to replace the user **wrongUser@yourOrg.com.sandbox **with** correctUser@yourOrg.com** in an approval process* -->


<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0"
    xmlns:sf="http://soap.sforce.com/2006/04/metadata" 
    exclude-result-prefixes="sf">
       
    <xsl:template match="sf:approvalStep/sf:assignedApprover/sf:approver/sf:name/text()">
        <xsl:value-of select="replace(., '(wrongUser@yourOrg.com.sandbox)', 'correctUser@yourOrg.com')"/>
    </xsl:template>
    
    <!-- By default, leave everything else as it is -->
    <xsl:output exclude-result-prefixes="#all"  omit-xml-declaration="yes" indent="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
</xsl:stylesheet>
