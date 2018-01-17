<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="/EMPLOYEE_LIST">
        <employees>
            <xsl:apply-templates select="EMPLOYEES/node()"/>
        </employees>
    </xsl:template>

    <xsl:template match="PERMANENT">
        <xsl:apply-templates select="*"/>
        <type>permanent</type>
    </xsl:template>

    <xsl:template match="CONTRACTUAL">
        <xsl:apply-templates select="*"/>
        <type>contractual</type>
    </xsl:template>

    <xsl:template match="EMPID">
        <emp_id>
            <xsl:value-of select="."/>
        </emp_id>
    </xsl:template>
    <xsl:template match="FIRST_NAME">
        <f_name>
            <xsl:value-of select="."/>
        </f_name>
    </xsl:template>
    <xsl:template match="MIDDLE_NAME">
        <m_name>
            <xsl:value-of select="."/>
        </m_name>
    </xsl:template>
    <xsl:template match="LAST_NAME">
        <l_name>
            <xsl:value-of select="."/>
        </l_name>
    </xsl:template>
</xsl:stylesheet>
