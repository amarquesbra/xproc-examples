<?xml version="1.0"?>
	<!--
		Simple XProc example - Executing an inline XQuery against an XML
		document
	-->
<p:pipeline xmlns:c="http://www.w3.org/ns/xproc-step"
	xmlns:p="http://www.w3.org/ns/xproc" name="pipeline">

	<p:xquery>

		<!-- Simple XML Source -->
		<p:input port="source">
			<p:document href="source.xml" />
		</p:input>

		<!-- Inline XQuery -->
		<p:input port="query">
			<p:inline>
				<c:query>//createdDate</c:query>
			</p:inline>
		</p:input>
	</p:xquery>

</p:pipeline>