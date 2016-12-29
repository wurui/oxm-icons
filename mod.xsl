<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/root" name="wurui.oxm-icons">
    <!-- className 'J_OXMod' required  -->
    <div class="J_OXMod oxmod-oxm-icons" ox-mod="oxm-icons">
        <xsl:for-each select="data/icon-menu/i">
            <div class="icon-row">
                <xsl:for-each select="i">
                    <a class="icon" target="_blank" href="{href}" >

                        <img style="background-image:url({icon});"
                                src="//oxm1.cc/img/blank.png" />
                        <br/>
                        <nobr><xsl:value-of select="title"/></nobr>
                    </a>
                </xsl:for-each>
            </div>

        </xsl:for-each>
      </div>
    </xsl:template>

</xsl:stylesheet>
