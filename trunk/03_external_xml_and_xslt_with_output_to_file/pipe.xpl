<?xml version="1.0"?>
	<!--
		Simple XProc example - transforming a source XML file into XHTML using
		an external stylesheet. This time, the resultant XHTML is saved to a file
	-->
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc">

	<p:input port="parameters" kind="parameter" />

	<!-- 
		XInclude the source XML Document
	 -->
	<p:xinclude>
		<p:input port="source">
			<p:document href="source.xml" />
		</p:input>
	</p:xinclude>

	<!-- 
		Apply the Transform
	 -->
	<p:xslt>
		<p:input port="stylesheet">
			<p:document href="stylesheet.xsl" />
		</p:input>
	</p:xslt>

	<!--
		Output to file
	-->
	<p:store href="output.html" method="xml" />
</p:declare-step>