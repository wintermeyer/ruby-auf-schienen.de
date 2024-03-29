<?xml version='1.0'?>
 
<!--
	Copyright (c) 2007-2009 Red Hat, Inc.
	License: GPLv2+ or Artistic
	Author: Jeff Fearn <jfearn@redhat.com>
	Author: Tammy Fox <tfox@redhat.com>
	Author: Andy Fitzsimon <afitzsim@redhat.com>
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:exsl="http://exslt.org/common"
		xmlns:perl="urn:perl"
		version="1.0"
		exclude-result-prefixes="exsl perl">

<!-- titles after all elements -->
<xsl:param name="formal.title.placement">
figure after
example after
equation after
table after
procedure before 
</xsl:param>

<!--<xsl:param name="prod.url" select="'http://www.redhat.com/docs'"/>
<xsl:param name="doc.url" select="'http://fedorahosted.org/publican'"/>-->

<xsl:param name="generate.section.toc.level" select="0"/>
<xsl:param name="qanda.defaultlabel">qanda</xsl:param>

<xsl:template name="user.preroot">
  <!-- Pre-root output, can be used to output comments and PIs. -->
  <!-- This must not output any element content! -->
</xsl:template>
<!--
Copied from fo/params.xsl
-->
<xsl:param name="l10n.gentext.default.language" select="'en'"/>

<xsl:param name="show.comments">0</xsl:param>
<xsl:param name="confidential" select="0"/>

<!-- This sets the filename based on the ID.								-->
<xsl:param name="use.id.as.filename" select="'1'"/>

<xsl:param name="embedtoc" select="'0'"/>
<xsl:param name="desktop" select="0"/>

<xsl:param name="funcsynopsis.style">ansi</xsl:param>
<xsl:param name="refentry.pagebreak">0</xsl:param>

<xsl:template match="command">
	<xsl:call-template name="inline.monoseq"/>
</xsl:template>

<xsl:template match="application">
	<xsl:call-template name="inline.boldseq"/>
</xsl:template>

<xsl:template match="guibutton">
	<xsl:call-template name="inline.boldseq"/>
</xsl:template>

<xsl:template match="guiicon">
	<xsl:call-template name="inline.boldseq"/>
</xsl:template>

<xsl:template match="guilabel">
	<xsl:call-template name="inline.boldseq"/>
</xsl:template>

<xsl:template match="guimenu">
	<xsl:call-template name="inline.boldseq"/>
</xsl:template>

<xsl:template match="guimenuitem">
	<xsl:call-template name="inline.boldseq"/>
</xsl:template>

<xsl:template match="guisubmenu">
	<xsl:call-template name="inline.boldseq"/>
</xsl:template>

<xsl:template match="filename">
	<xsl:call-template name="inline.monoseq"/>
</xsl:template>

</xsl:stylesheet>


