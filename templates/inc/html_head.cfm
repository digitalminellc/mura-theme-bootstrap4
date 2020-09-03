<cfoutput>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="#EncodeForHTMLAttribute($.content('metaDesc'))#">
	<meta name="keywords" content="#EncodeForHTMLAttribute($.content('metaKeywords'))#">
	<cfif len($.content('credits'))><meta name="author" content="#EncodeForHTMLAttribute($.content('credits'))#"></cfif>
	<cfif YesNoFormat($.content('searchExclude'))><meta name="robots" content="noindex"></cfif>
	<meta name="generator" content="Mura CMS #$.globalConfig('version')#">

	<title>#EncodeForHTML($.content('HTMLTitle'))# - #EncodeForHTML($.siteConfig('site'))#</title>

	<!--- Mura CMS Base Styles--->
	<!--- Optional: Mura CMS Skin Styles. Duplicate to your theme to customize, changing 'assetPath' to 'themeAssetPath' below. Don't forget to move, remove or replace sprite.png. --->
	#$.outputMuraCSS(version="7.1", includeskin=true)#

	<!--- Theme CSS (includes Bootstrap, Font Awesome, etc.) --->
	<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/css/theme.css">

	<!--- Theme Scripts (includes jQuery) --->
	<script src="#$.siteConfig('themeAssetPath')#/js/theme.js"></script>

	<!--- FAV ICONS --->
	<link rel="shortcut icon" href="#$.globalConfig('corePath')#/modules/v1/core_assets/images/favicon.ico">

	<!--- MURA FEEDS --->
	<cfscript>
		rs = $.getBean('feedManager').getFeeds($.event('siteID'), 'Local', true, true);
		apiEndpoint = $.siteConfig().getApi('feed','v1').getEndpoint();
	</cfscript>
	<cfloop query="rs"><link rel="alternate" type="application/rss+xml" title="#EncodeForHTMLAttribute($.siteConfig('site'))# - #EncodeForHTMLAttribute(rs.name)#" href="#XMLFormat('#apiEndpoint#/?feedID=#rs.feedID#')#"></cfloop>
</head>
</cfoutput>
