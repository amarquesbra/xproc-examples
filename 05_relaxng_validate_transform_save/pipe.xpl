<?xml version="1.0"?>
	<!--
		Simple XProc example - transforming a source XML file into XHTML using
		an external stylesheet. This time a validation step takes place to
		verify the source document/instance against an XML Schema.
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
		Validate with RelaxNG
	-->
	<p:validate-with-relax-ng>
		<p:input port="schema">
			<p:document href="schema.rng" />
		</p:input>
	</p:validate-with-relax-ng>

	<!-- 
		Apply the Transform
	-->
	<p:xslt>
		<p:input port="stylesheet">
			<p:document href="stylesheet.xsl" />
		</p:input>
	</p:xslt>

	<p:store href="output.html" method="xml" />

</p:declare-step>