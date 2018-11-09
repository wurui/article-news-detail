<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.article-news-detail">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-article-news-detail" ox-mod="article-news-detail">
            <xsl:variable name="detail" select="data/info-news/i[1]"/>
            <xsl:choose>
                <xsl:when test="$detail">
                    <h1>
                        <xsl:value-of select="$detail/title"/>
                    </h1>

                    <p class="time">
                        <xsl:if test="$detail/sort != '' ">
                            <xsl:value-of select="$detail/sort"/>&#183;
                        </xsl:if>
                        <xsl:value-of select="$detail/author"/>
                        
                        &#160;<xsl:value-of select="$detail/time/y"/>-<xsl:value-of select="$detail/time/M"/>-<xsl:value-of select="$detail/time/d"/>
                    </p>
                    <div class="content">
                        <xsl:value-of select="$detail/content" disable-output-escaping="yes"/>
                    </div>
                </xsl:when>
                <xsl:otherwise>
                    <center class="nodata">暂无数据</center>
                </xsl:otherwise>

            </xsl:choose>
        	
        </div>
    </xsl:template>
</xsl:stylesheet>
