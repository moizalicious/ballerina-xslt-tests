<xsl:stylesheet version = '1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
  <xsl:template match="/">
    <title>
      <xsl:value-of select="//title"/>
    </title>
    <author>
      <xsl:value-of select="//author"/>
    </author>
  </xsl:template>
</xsl:stylesheet>