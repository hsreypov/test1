<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html>

<body>
	<h2>List of Books</h2>
	<table border="1">
		<tr>
			<th>AuthorName</th>
			<th>Title</th>
			<th>Publicyear</th>
			<th>Page</th>
			<th>ISBN</th>
		</tr>

		<xsl:for-each select="booklist/book">
		
		<tr>
			<td><xsl:value-of select="authorname"/></td>
			<td><xsl:value-of select="title"/></td>
			<td><xsl:value-of select="publicyear"/></td>
			<td><xsl:value-of select="page"/></td>
			<td><xsl:value-of select="isbn"/></td>
		</tr>

		</xsl:for-each>

	</table>
	<h2>Sort Books</h2>
	<table border="1">
		<tr>
			<th>AuthorName</th>
			<th>Title</th>
			<th>Publicyear</th>
			<th>Page</th>
			<th>ISBN</th>
		</tr>

		<xsl:for-each select="booklist/book">
		<xsl:sort select='publicyear' />
		<tr>
			<td><xsl:value-of select="authorname"/></td>
			<td><xsl:value-of select="title"/></td>
			<td><xsl:value-of select="publicyear"/></td>
			<td><xsl:value-of select="page"/></td>
			<td><xsl:value-of select="isbn"/></td>
		</tr>

		</xsl:for-each>

	</table>

	<h2>Books that have page more than 200 pages</h2>
        <table border="1">
          <tr>
            <th>AuthorName</th>
			<th>Title</th>
			<th>Publicyear</th>
			<th>Page</th>
			<th>ISBN</th>
          </tr>
          <xsl:for-each select="booklist/book">
              <tr>
                <td><xsl:value-of select="title"/></td>
                <td><xsl:value-of select="authorname"/></td>
                <td><xsl:value-of select="publicyear"/></td>
                <xsl:choose>
                  <xsl:when test="page>200">
                    <td bgcolor="pink"><xsl:value-of select="page"/></td>
                  </xsl:when>
                  <xsl:otherwise>
                    <td><xsl:value-of select="page"/></td>
                  </xsl:otherwise>
                </xsl:choose>
                <td><xsl:value-of select="isbn"/></td>
              </tr>
          </xsl:for-each>
        </table>

        <h2>Show only the books with title=kh and status=new</h2>
        <table border="1">
          <tr>
            <th>AuthorName</th>
			<th>Title</th>
			<th>Publicyear</th>
			<th>Page</th>
			<th>ISBN</th>
          </tr>
          <xsl:for-each select="booklist/book">
            <xsl:if test="title[@lang='kh'] and title[@status='new']">
              <tr>
                <td><xsl:value-of select="authorname"/></td>
				<td><xsl:value-of select="title"/></td>
				<td><xsl:value-of select="publicyear"/></td>
				<td><xsl:value-of select="page"/></td>
				<td><xsl:value-of select="isbn"/></td>
              </tr>
            </xsl:if>
          </xsl:for-each>
        </table>

</body>

</html>

</xsl:template>
</xsl:stylesheet>