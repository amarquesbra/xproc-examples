<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0">
	<xsl:output method="xml" indent="yes" encoding="UTF-8" />
	<!--
		<xsl:output method="xhtml"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-
		transitional.dtd" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//
		EN" indent="yes" />
	-->
	<xsl:template match="/xml">
		<html>
			<head>
				<title>XSLT to XHTML via XProc</title>
			</head>
			<body>
				<h1>
					<xsl:value-of select="." />
				</h1>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>