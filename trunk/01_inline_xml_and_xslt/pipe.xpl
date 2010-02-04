<?xml version="1.0"?>
	<!--
		Simple XProc example - transforming some inline XML using a simple
		inline stylesheet
	-->
<p:pipeline xmlns:p="http://www.w3.org/ns/xproc">
	<p:xslt>
		<!-- Simple XML Source (inline) -->
		<p:input port="source">
			<p:inline>
				<xml>Inline XML conversion with inline XSLT using XProc</xml>
			</p:inline>
		</p:input>

		<!-- XSLT Transform (inline) -->
		<p:input port="stylesheet">
			<p:inline>
				<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
					version="2.0">
					<xsl:output method="xml" indent="yes" encoding="UTF-8" />
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
			</p:inline>
		</p:input>
	</p:xslt>
</p:pipeline>  
