<?xml version="1.0" encoding="UTF-8"?>

<html xsl:version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <body style="font-family:Arial; font-size:16px; ">

        <xsl:for-each select="breakfast_menu/food">
            <div style="background-color: teal; color:#fff; padding:5px;">
                <span style="font-weigth:bold;">
                    <xsl:value-of select="name" />
 - </span>
                <xsl:value-of select="price"/>
            </div>

            <div style="margin:20px 16px; font-size:10pt">
                <p>
                    <xsl:value-of select="description" />
                    <span style="font-style:italic">

                        <xsl:value-of select="calories"/>
                    </span>
                </p>

            </div>

        </xsl:for-each>
    </body>
</html>