<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>Vitalii Manoilo</title>
                <link rel="icon" href="https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/man-student_1f468-200d-1f393.png"></link>
                <link rel="stylesheet" href="../style/style.css"></link>
                <script id="MathJax-script" async="" src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/mml-svg.js"/>
            </head>
            <body>
                <math xmlns="http://www.w3.org/1998/Math/MathML">
                    <xsl:apply-templates>
                    </xsl:apply-templates>
                </math>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="операнд">
        <mi>
            <xsl:value-of select="."/>
        </mi>
    </xsl:template>

    <xsl:template match="оператор">
        <mo>
            <xsl:value-of select="."/>
        </mo>
    </xsl:template>

    <xsl:template match="число">
        <mn>
            <xsl:value-of select="."/>
        </mn>
    </xsl:template>

    <xsl:template match="строка">
        <mrow>
            <xsl:apply-templates/>
        </mrow>
    </xsl:template>

    <xsl:template match="корень">
        <mroot>
            <xsl:apply-templates/>
            <mn>2</mn>
        </mroot>
    </xsl:template>

    <xsl:template match="низ">
        <msub>
            <xsl:apply-templates/>
        </msub>
    </xsl:template>

    <xsl:template match="верх">
        <msup>
            <xsl:apply-templates/>
        </msup>
    </xsl:template>

    <xsl:template match="низверх">
        <munderover displaystyle="true">
            <xsl:apply-templates/>
        </munderover>
    </xsl:template>

    <xsl:template match="дробь">
        <mfrac>
            <xsl:apply-templates/>
        </mfrac>
    </xsl:template>

</xsl:stylesheet>