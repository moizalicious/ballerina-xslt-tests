<xsl:stylesheet version = '1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
  <xsl:template match="employee">
    <b>
      <xsl:apply-templates select="firstName"/>
    </b>
    <b>
      <xsl:apply-templates select="lastName"/>
    </b>
  </xsl:template>
  <xsl:template match="lastName">
    <i>
      <xsl:value-of select="."/>
    </i>
  </xsl:template>
</xsl:stylesheet>