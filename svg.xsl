<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
            </head>
            <body>
                <h1>XSL (xml -> svg) - Arif Balaev</h1>
                    <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>



    <xsl:template match="графика">
        <svg>
            <xsl:apply-templates select="@*|node()"/>
        </svg>
    </xsl:template>

    <xsl:template match="эллипс">
        <ellipse>
            <xsl:apply-templates select="@*"/>
        </ellipse>
    </xsl:template>

    <xsl:template match="@ширина">
        <xsl:attribute name="width">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="@высота">
        <xsl:attribute name="height">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="@заливка">
        <xsl:attribute name="fill">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="@ободок">
        <xsl:attribute name="stroke">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="@ширина-ободка">
        <xsl:attribute name="stroke-width">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>