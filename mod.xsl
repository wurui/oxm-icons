<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/root" name="wurui.oxm-icons">
    <!-- className 'J_OXMod' required  -->
    <div class="J_OXMod oxmod-oxm-icons" ox-mod="oxm-icons">

        <xsl:for-each select="data/icon-menu/i">
            <div class="icon-row">
                <xsl:for-each select="i">
                    <xsl:variable name="url">
                        <xsl:choose>
                            <xsl:when test="contains(href,'{{_id}}')">
                                <xsl:value-of select="concat(substring-before(href,'{{_id}}'),_id,substring-after(href,'{{_id}}'))"/>
                            </xsl:when>
                            <xsl:otherwise><xsl:value-of select="href"/></xsl:otherwise>
                        </xsl:choose>
                    </xsl:variable>
                    <a class="icon" href="{$url}" >

                        <img style="background-image:url({icon});"
                                src="//a.oxm1.cc/img/blank.png" />
                        <br/>
                        <nobr><xsl:value-of select="title"/></nobr>
                    </a>
                </xsl:for-each>
            </div>

        </xsl:for-each>
      </div>
    </xsl:template>

</xsl:stylesheet>
