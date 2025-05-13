<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>CD Catalog</title>
        <style>
          body { font-family: Arial; padding: 20px; background: #f2f2f2; }
          table { width: 100%; border-collapse: collapse; }
          th, td { border: 1px solid #aaa; padding: 10px; text-align: left; }
          th { background: #333; color: white; }
        </style>
      </head>
      <body>
        <h1>CD Catalog</h1>
        <table>
          <tr>
            <th>Title</th>
            <th>Artist</th>
            <th>Genre</th>
            <th>Release Year</th>
            <th>Price</th>
          </tr>
          <xsl:for-each select="cdCatalog/cd">
            <tr>
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="artist"/></td>
              <td><xsl:value-of select="genre"/></td>
              <td><xsl:value-of select="releaseYear"/></td>
              <td><xsl:value-of select="price"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
