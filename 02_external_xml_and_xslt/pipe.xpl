<?xml version="1.0"?>
	<!--
		Simple XProc example - transforming a source XML file into XHTML using an external stylesheet
	-->
<p:pipeline xmlns:p="http://www.w3.org/ns/xproc">
	<p:xslt>
		<!-- Simple XML Source -->
		<p:input port="source">
			<p:document href="source.xml"/>
		</p:input>

		<!-- XSLT Transform -->
		<p:input port="stylesheet">
			<p:document href="stylesheet.xsl"/>
		</p:input>
	</p:xslt>
</p:pipeline>  
