<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
                <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
                
  <xsl:template match="/calc">
  	<result>
		<xsl:apply-templates select="expression"/>
	</result>
  </xsl:template>
  
  <xsl:template match="expression">
  	<answer>
  		<xsl:choose>
  			<xsl:when test="@operation = '+'">
	  			<xsl:value-of select="num1 + num2"/>
	  		</xsl:when>
	  		
  			<xsl:when test="@operation = '-'">
	  			<xsl:value-of select="num1 - num2"/>
	  		</xsl:when>
	  		
  			<xsl:when test="@operation = '/'">
	  			<xsl:choose>
		  			<xsl:when test="num2 = '0'">
		  				<xsl:text>Деление на ноль!</xsl:text>
		  			</xsl:when>
		  			<xsl:otherwise>
		  				<xsl:value-of select="num1 div num2"/>
		  			</xsl:otherwise>
		  		</xsl:choose>
	  		</xsl:when>
	  		
  			<xsl:when test="@operation = '*'">
	  			<xsl:value-of select="num1 * num2"/>
	  		</xsl:when>
	  		
	  		<xsl:otherwise>
		  		<xsl:text>Неверная операция!</xsl:text>
		  	</xsl:otherwise>
  		</xsl:choose>
  	</answer>
  </xsl:template>
  
</xsl:stylesheet>
