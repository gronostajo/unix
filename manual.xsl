<?xml version="1.0" encoding="UTF-8"?>

<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
<html>
	<head>
		<meta charset="utf-8" />
		<title><xsl:value-of select="manual/meta/title" /></title>
		<style type="text/css">
			@import url('normalize.css');
			@import url('http://fonts.googleapis.com/css?family=Ubuntu+Mono|Open+Sans:400,400italic|Merienda&amp;subset=latin,latin-ext');

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

			a, a:visited {
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

			#anchor {
				display: block;
				position: fixed;
				top: 0;
				left: 50%;
				margin-left: 410px;
				text-align: center;
				background-color: white;
				background-image: -webkit-linear-gradient(top, white, #f0f0f0);
				background-image: -moz-linear-gradient(top, white, #f0f0f0);
				background-image: -ms-linear-gradient(top, white, #f0f0f0);
				background-image: -o-linear-gradient(top, white, #f0f0f0);
				background-image: linear-gradient(top, white, #f0f0f0);
				color: #f06000;
				border: 1px solid #f08000;
				border-top: none;
				border-radius: 0 0 5px 5px;
				box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
			}

			#anchor > *, #anchor > *:visited {
				display: inline-block;
				width: 40px;
				padding: 0 0 5px;
				border: none;
			}

			#anchor > * + * {
				border-left: 1px solid #f08000;
				border-color: #f08000 !important;
			}

			#anchor > *:hover {
				color: #f06000;
				box-shadow: 0 0 5px #f08000;
				cursor: pointer;
				background-image: -webkit-linear-gradient(bottom, #f8f8f8, #f0f0f0);
				background-image: -moz-linear-gradient(bottom, #f8f8f8, #f0f0f0);
				background-image: -ms-linear-gradient(bottom, #f8f8f8, #f0f0f0);
				background-image: -o-linear-gradient(bottom, #f8f8f8, #f0f0f0);
				background-image: linear-gradient(bottom, #f8f8f8, #f0f0f0);
			}

			#anchor > *:first-of-type {
				border-radius: 0 0 0 5px;
			}

			#anchor > *:last-of-type {
				border-radius: 0 0 5px 0;
			}

			#gotob:hover {
				border-radius: 0;
			}

			#gotob:hover + #goto, #goto:hover {
				display: block;
			}

			#goto, .subgoto {
				display: none;
				float: right;
				position: absolute;
				right: 0;
				width: 240px;
				padding: 0;
				background-color: #f8f8f8;
				background-image: -webkit-linear-gradient(top, white, #f8f8f8 120px);
				background-image: -moz-linear-gradient(top, white, #f8f8f8 120px);
				background-image: -ms-linear-gradient(top, white, #f8f8f8 120px);
				background-image: -o-linear-gradient(top, white, #f8f8f8 120px);
				background-image: linear-gradient(top, white, #f8f8f8 120px);
				border: 1px solid #f08000;
				border-radius: 5px 0 5px 5px !important;
				box-shadow: -1px 1px 5px -1px #f08000;
			}

			.subgoto {
				width: 120px;
				right: 220px;
				margin-top: -24px;
			}

			#goto ul {
				list-style-type: none;
			}

			#goto li {
				display: block;
				font-size: 0.9em;
				margin: 0;
			}

			#goto a {
				display: block;
				padding: 5px 8px;
				border: none;
				text-decoration: underline;
				text-align: right;
			}

			#goto li + li a {
				border-top: 1px solid #e4e4e4;
			}

			#goto a:hover {
				background-color: fed;
				background-image: -webkit-linear-gradient(top, #fed 0, #ffe 30%, #ffe 70%, #fed 100%);
			}

			a:hover + .subgoto, .subgoto:hover {
				display: block;
			}

			#goto li:first-of-type a {
				border-radius: 5px 0 0 0;
			}

			#goto li:last-of-type a {
				border-radius: 0 0 5px 5px;
			}

			#goto li:first-of-type:last-of-type a {
				border-radius: 5px 0 5px 5px;
			}

			#container {
				width: 888px;
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
			<div id="anchor">
				<a href="#">&#8593;</a>
				<a href="#" id="gotob" onclick="return false;">...</a>
				<ul id="goto">
					<xsl:for-each select="manual/section">
					<li>
						<a>
							<xsl:attribute name="href">#section<xsl:value-of select="position()" /></xsl:attribute>
							<xsl:value-of select="@title" />
						</a>
						<xsl:if test="command">
						<ul class="subgoto">
							<xsl:for-each select="command">
							<li>
								<a>
									<xsl:choose>
										<xsl:when test="contains(@name,',')">
											<xsl:attribute name="href">#cmd_<xsl:value-of select="substring-before(@name,',')" /></xsl:attribute>
										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="href">#cmd_<xsl:value-of select="@name" /></xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<xsl:value-of select="@name" />
								</a>
							</li>
							</xsl:for-each>
						</ul>
						</xsl:if>
					</li>
					</xsl:for-each>
				</ul>
			</div>
			<header>
				<table>
					<xsl:apply-templates select="manual/meta/data" />
				</table>
				<h1><xsl:value-of select="manual/meta/title" /></h1>
				<div class="clear" />
			</header>
			<section>
				<xsl:for-each select="manual/section">
				<a>
					<xsl:attribute name="name">section<xsl:value-of select="position()" /></xsl:attribute>
				</a>
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
				</xsl:for-each>
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
					<a>
						<xsl:choose>
							<xsl:when test="contains(@name,',')">
								<xsl:attribute name="name">cmd_<xsl:value-of select="substring-before(@name,',')" /></xsl:attribute>
							</xsl:when>
							<xsl:otherwise>
								<xsl:attribute name="name">cmd_<xsl:value-of select="@name" /></xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
					</a>
					<div class="command">
						<xsl:if test="@name">
							<h3><xsl:value-of select="@name" /></h3>
						</xsl:if>
						<xsl:if test="h">
						<div class="cmdhead">
							<xsl:for-each select="h">
								<div>
								<xsl:copy-of select="*" />
								</div>
							</xsl:for-each>
						</div>
						</xsl:if>
						<xsl:copy-of select="p | pre | ul | ol" />
					</div>
	</xsl:template>

</xsl:transform>