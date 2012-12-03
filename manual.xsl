<?xml version="1.0" encoding="UTF-8"?>

<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
<html>
	<head>
		<meta charset="utf-8" />
		<title><xsl:value-of select="manual/meta/title" /></title>
		<style type="text/css">
			@import url('normalize.css');
			@import url('http://fonts.googleapis.com/css?family=Ubuntu+Mono|Open+Sans|Merienda&amp;subset=latin,latin-ext');

			* {
				margin: 0;
				padding: 0;
				outline: none;
				zoom: 1;
			}

			body {
				font-family: 'Open Sans', Arial, Helvetica, sans-serif;
				background-color: #f0f0f0;
			}

			a {
				color: #d04000;
				text-decoration: none;
				border-bottom: 1px solid #d06000;
			}

			a:hover {
				color: #f06000;
				border-bottom-color: #f08000;
			}

			code, pre, kbd {
				font-family: 'Ubuntu Mono', 'Lucida Console', 'Courier New', monospace;
			}

			q, blockquote {
				font-family: Merienda, 'Open Sans', Arial, Helvetica, sans-serif;
			}

			#anchor_top {
				display: block;
				position: fixed;
				top: 0;
				left: 50%;
				width: 120px;
				margin-left: 395px;
				padding: 1px 0 4px;
				text-align: center;
				background-color: white;
				color: #f06000;
				border: 1px solid #f08000;
				border-top: none;
				border-right: none;
				border-radius: 0 0 0 5px;
			}

			#anchor_top:hover {
				color: #f06000;
				border-color: #f08000;
				box-shadow: 0 0 5px #f08000;
			}

			#container {
				width: 960px;
				margin: 0 auto;
				padding: 16px 36px 64px;
				background-color: white;
				box-shadow: 0 0 16px rgba(0, 0, 0, 0.5);
			}

			h1, h2 {
				font-family: 'Open Sans', 'Segoe UI', Arial, Verdana, sans-serif;
				font-weight: normal;
			}

			h1 {
				font-size: 2.4em;
			}

			h2 {
				font-size: 1.8em;
			}

			h3 {
				display: inline-block;
				font-family: 'Ubuntu Mono', 'Lucida Console', 'Courier New', monospace;
				font-weight: normal;
				font-size: 1.6em;
				margin-left: -0.8em;
			}

			.clear {
				display: block;
				clear: both;
				width: 0;
				height: 0;
				font-size: 0;
				overflow: hidden;
				visibility: hidden;
			}

			header table {
				float: right;
				border-collapse: collapse;
				margin-top: 20px;
			}

			header table tr + tr {
				border-top: 1px solid #eee;
			}

			header table td {
				padding: 3px 6px;
				vertical-align: top;
			}

			header table td:first-child {
				font-weight: bold;
			}

			section {
				line-height: 1.8em;
				width: 760px;
				counter-reset: articles;
			}

			article {
				padding-top: 4em;
			}

			article:before {
				counter-increment: articles;
				content: counter(articles) '.';
				float: left;
				font-size: 1.8em;
				padding-right: 0.3em;
			}

			section * + * {
				margin-top: 1em;
			}

			p.nugget {
				text-align: right;
				font-size: 0.8em;
				line-height: 1.5em;
				width: 40%;
				margin-left: auto;
			}

			code {
				border-bottom: 1px solid #f0a080;
				padding: 0 2px;
			}

			code:before, pre:before {
				content: '$';
				color: #d04000;
				padding-right: 0.4em;
			}

			code.plain {
				border-bottom: none;
			}

			code.plain:before {
				display: none;
			}

			pre {
				border: 1px solid #ffe0d0;
				border-left: 3px solid #f0a080;
				padding: 0.2em 0.5em 0.2em 2.5em;
				background-color: #fff8f0;
				text-indent: -2em;
			}

			pre + pre {
				margin-top: 0;
				border-top: none;
			}

			ul, ol, pre {
				margin-left: 3em;
			}

			ul {
				list-style-type: disc;
			}

			li {
				margin: 1em 0;
			}

			li li {
				margin: 0.5em 0;
			}

			figure {
				border: 1px solid #f0a080;
				border-width: 1px 0;
				margin: 2.5em 80px;
				padding: 0.4em 0.8em;
			}

			figcaption {
				text-align: right;
				margin-top: 0;
			}

			blockquote {
				font-size: 1.2em;
			}

			kbd {
				padding: 0 2px;
				border-radius: 3px;
				color: #111;
				background-color: #f0f0f0;
				border: 1px solid #d0d0d0;
			}

			div.command {
				margin-top: 2em;
				margin-left: 40px;
			}

			div.command + div.command {
				margin-top: 4em;
			}

			div.cmdhead {
				border-left: 2px solid #f0a080;
				padding: 0.6em 0.8em 0.4em;
				background-color: #fff8f0;
			}

			div.cmdhead pre {
				margin-left: 0;
				background-color: white;
			}

			div.cmdhead p + p {
				margin-top: 0.4em;
			}

			h3 + div.cmdhead {
				margin-top: 0.3em;
			}
		</style>
	</head>
	<body>
		<div id="container">
			<a href="#" id="anchor_top">&#8593; do góry &#8593;</a>
			<header>
				<table>
					<xsl:apply-templates select="manual/meta/data" />
				</table>
				<h1><xsl:value-of select="manual/meta/title" /></h1>
				<div class="clear" />
			</header>
			<section>
				<xsl:apply-templates select="manual/section" />
			</section>
		</div>
	</body>
</html>
	</xsl:template>

	<xsl:template match="meta/data">
			<tr>
				<td><xsl:value-of select="@label" /></td>
				<td>
					<xsl:apply-templates />
				</td>
			</tr>
	</xsl:template>

	<xsl:template match="meta/data/*">
					<p><xsl:value-of select="." /></p>
	</xsl:template>

	<xsl:template match="meta/data/a">
					<a target="_blank">
						<xsl:attribute name="href">
							<xsl:value-of select="@href" />
						</xsl:attribute>
						<xsl:value-of select="." />
					</a>
	</xsl:template>

	<xsl:template match="section">
				<article>
					<h2><xsl:value-of select="@title" /></h2>
					<xsl:if test="@quote">
					<figure>
						<blockquote><xsl:value-of select="@quote" /></blockquote>
						<xsl:if test="@author">
						<figcaption>- <xsl:value-of select="@author" /></figcaption>
						</xsl:if>
					</figure>
					</xsl:if>
					<xsl:apply-templates select="list | paragraph | command" />
				</article>
	</xsl:template>

	<xsl:template match="section/list">
					<ol>
						<xsl:for-each select="item">
						<li>
							<xsl:copy-of select="." />
						</li>
						</xsl:for-each>
					</ol>
	</xsl:template>

	<xsl:template match="section/paragraph">
					<div>
						<xsl:copy-of select="." />
					</div>
	</xsl:template>

	<xsl:template match="section/command">
					<div class="command">
						<xsl:if test="@name">
							<h3><xsl:value-of select="@name" /></h3>
						</xsl:if>
						<xsl:if test="h">
						<div class="cmdhead">
							<xsl:copy-of select="h" />
						</div>
						</xsl:if>
						<xsl:copy-of select="p | pre | ul | ol" />
					</div>
	</xsl:template>

</xsl:transform>