<?xml version="1.0" encoding="UTF-8"?>

<html xsl:version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <body style="font-family:Arial; font-size:16px; ">

        <xsl:for-each select="breakfast_menu/food">
            <p>
                <xsl:number value="position()" format="1. "/>
                <xsl:text>Item: </xsl:text>
                <xsl:value-of select="name"/>
                <xsl:text> - </xsl:text>
                <xsl:value-of select="price"/>

                <br/>

                <xsl:value-of select="description"/>
                <br/>

                <xsl:choose>
                    <xsl:when test="calories &lt; 700">
                        <br/>
                        <span style="color:green;">Low Calorie</span>
                    </xsl:when>
                    <xsl:when test="calories &gt; 900">
                        <br/>
                        <span style="color:orange;">Moderate Calorie</span>
                    </xsl:when>
                    <xsl:otherwise>
                        <br/>
                        <span style="color:orange;">High Calorie</span>
                    </xsl:otherwise>
                </xsl:choose>
            </p>
        </xsl:for-each>
    </body>
</html>
