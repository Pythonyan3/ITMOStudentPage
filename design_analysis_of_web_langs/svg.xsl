<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>Vitalii Manoilo</title>
                <link rel="icon" href="https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/man-student_1f468-200d-1f393.png"></link>
                <link rel="stylesheet" href="../style/style.css"></link>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="графика">
        <svg class="svg_ellipses">
            <xsl:attribute name="width">
                <xsl:value-of select="@ширина"/>
            </xsl:attribute>

            <xsl:attribute name="height">
                <xsl:value-of select="@высота"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </svg>
    </xsl:template>

    <xsl:template match="эллипс">
        <ellipse>
            <xsl:attribute name="id">
                <xsl:value-of select="@id"/>
            </xsl:attribute>

            <xsl:attribute name="fill">
                <xsl:value-of select="@заливка"/>
            </xsl:attribute>
            
            <xsl:attribute name="stroke">
                <xsl:value-of select="@ободок"/>
            </xsl:attribute>
            
            <xsl:attribute name="stroke-width">
                <xsl:value-of select="@ширина-ободка"/>
            </xsl:attribute>

            <xsl:attribute name="cx">
                <xsl:value-of select="@cx"/>
            </xsl:attribute>

            <xsl:attribute name="cy">
                <xsl:value-of select="@cy"/>
            </xsl:attribute>

            <xsl:attribute name="rx">
                <xsl:value-of select="@rx"/>
            </xsl:attribute>

            <xsl:attribute name="ry">
                <xsl:value-of select="@ry"/>
            </xsl:attribute>
        </ellipse>
    </xsl:template>

</xsl:stylesheet>