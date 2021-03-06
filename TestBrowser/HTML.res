        ��  ��                    0   �� H E L P _ H T M L       0 	        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
 * This file accompanies the article "How to load and save documents in
 * TWebBrowser in a Delphi-like way" which can be found at
 * http://www.delphidabbler.com/articles?article=14.
 * 
 * Provides content of demo program's help pane. Stored in HTML resources with
 * resource name HELP_HTML.
 * 
 * $Rev: 9 $
 * $Date: 2009-09-25 23:06:35 +0100 (Fri, 25 Sep 2009) $
-->
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ansi" />
	<style type="text/css">
		/*<![CDATA[*/
		<!--
		body {
		  font-family: "Arial";
		  font-size: 8pt;
		  color: black;
		  margin-left: 2px;
		  margin-right: 2px;
		  margin-top: 0px;
		  margin-bottom: 0px;
		  background-color: #FFFFDD;
		}
		h1 {
		  font-size: 12pt;
		  color: navy;
		  margin-top: 0px;
		  margin-bottom: 0px;
		}
		h2 {
		  font-size: 10pt;
		  color: navy;
		  margin-top: 4px;
		  margin-bottom: 0px;
		}
		h3 {
		  font-size: 8pt;
		  margin-top: 4px;
		  margin-bottom: 0px;
		}
		p {
		  margin-top: 4px;
		  margin-bottom: 0px;
		}
		ul {
		  margin-top: 0px;
		  margin-bottom: 0px;
		  padding-left: 0px;
		  margin-left: 16px;
		  text-indent: 0px;
		}
		li {
		  margin-top: 4px;
		  margin-bottom: 0px;
		}
		.note {
		  background-color: #eec;
		  padding: 0.25em;
		}
		-->
		/*]]>*/
</style>
<title>
	Help file for DelphiDabbler Article #14 Demo
</title>

</head>

<body>

<h1>
	Demo Help
</h1>

<p>
	This pane describes how to use this demo program which accompanies the
	article &quot;<a
		href="http://www.delphidabbler.com/articles.php?article=14"
		target="_blank"
	>How to load and save documents in TWebBrowser in a Delphi-like
	way</a>&quot;.
</p>

<p>
	The program's main window has five main areas:
</p>

<ul>
	<li>
		The top left pane, labelled &quot;Test browser&quot; contains a
		<var>TWebBrowser</var> control that is used to display sample output. The
		control is wrapped by a <var>TWebBrowserWrapper</var> object, as defined
		in the article and included in this demo as
		<code>UWebBrowserWrapper.pas</code>.
	</li>
	<li>
		The text box labelled &quot;HTML Code&quot; displays code or text
		extracted from the test browser using the various Save buttons. HTML
		code can be entered in the box and loaded into the browser using the
		Load buttons. To generate some sample HTML code to load into the browser
		click the &quot;Show Sample HTML source&quot; link above the text
		box. You are given a choice of HTML to load - each option has a
		different encoding.
	</li>
	<li>
		The bottom part of the screen displays various buttons that are used to
		exercise <var>TWebBrowserWrapper</var>'s methods.
	</li>
	<li>
		The right hand pane displays this help message. It was loaded using the
		<var>TWebBrowserWrapper.NavigateToResource</var> method.
	</li>
	<li>
		<div>
			The status bar shows the character set being used by the document
			currently displayed in the browser control.
		</div>
		<div class="note" style="margin-top:4px;">
			<strong>Note:</strong> Unicode builds of the demo also show the
			encoding used to load the last document into the browser control.
		</div>
	</li>
</ul>

<p>
	The buttons exercise the various methods of the
	<var>TWebBrowserWrapper</var> class discussed in the article. Let's look at
	their use now.
</p>

<p class="note">
	<strong>Note:</strong>
	If you built the demo without Unicode support (i.e. using Delphi 2006 or
	earlier) some buttons may not work as expected if a non-ANSI document is
	loaded into the browser control.
</p>

<h2>
	Save Buttons
</h2>

<p>
	The save buttons all operate on the current content of the demo browser.
</p>

<h3>
	Save to String button
</h3>

<p>
	Clicking this button saves the current content of the demo browser in a
	string and then displays the string in the HTML code window.
</p>

<p class="note">
	<strong>Note:</strong> If Unicode is supported the current is remembered
	and used the next time the HTML code is loaded.
</p>

<h3>
	Save to Stream button
</h3>

<p>
	This button saves the current demo browser content to a stream and then
	loads the stream into the HTML code window. It's effect is the same as the
	Save to String button except that it operates in a different way.
</p>

<p class="note">
	<strong>Note:</strong> If Unicode is supported a dialog box appears that
	allows you to change the default encoding used to write the HTML to stream.
</p>

<h3>
	Save to File button
</h3>

<p>
	Clicking this button displays a standard file save dialog box where you
	enter a file name. The content of the demo browser is then saved to the
	file.
</p>

<p class="note">
	<strong>Note:</strong> If Unicode is supported a dialog box appears that
	allows you to change the encoding used to write the file.
</p>

<h2>
	Load Buttons
</h2>

<p>
	These buttons are used to load HTML content into an existing document. Each
	button gets the HTML code from a different source.
</p>

<h3>
	Load From String button
</h3>

<p>
	This button extracts the contents of the HTML Code text box and stores it in
	a string. It then loads the string into the demo browser (no checks are made
	that this is valid HTML). Some sample HTML code to load can be displayed in
	the text box by clicking the &quot;Show Sample HTML code&quot; link above
	the text box.
</p>

<p class="note">
	<strong>Note:</strong> If Unicode is supported the encoding currently used
	by the code in the HTML Code edit control is used to interpret the string.
</p>

<h3>
	Load From Stream button
</h3>

<p>
	This performs the same action as the Load from String button, except this
	button stores the HTML code text box contents in a stream and then loads
	the demo browser document from the stream.
</p>

<p class="note">
	<strong>Note:</strong> If Unicode is supported the encoding currently used
	by the code in the HTML Code edit control is used to format the stream to
	be loaded.
</p>

<h3>
	Load From File button
</h3>

<p>
	Clicking this button opens a standard file open dialog box and loads the
	HTML from whichever local file is selected. Some sample files named
	<code>Test-XXX.html</code> are included with the demo, where XXX describes
	the encoding used to save the files.
</p>

<h2>
	Navigate Buttons
</h2>

<p>
	These buttons are used to navigate to a given URL. The article describes the
	difference between the <var>Navigate***</var> and <var>Load***</var> methods
	of <var>TWebBrowserWrapper</var>.
</p>

<h3>
	Navigate to URL button
</h3>

<p>
	Clicking this button navigates the demo browser to the URL entered in the
	URL edit box that lies above the status bar. Enter any valid URL in this box
	before clicking the button.
</p>

<h3>
	Navigate to Local File button
</h3>

<p>
	A file open dialog is displayed when this button is clicked from where a
	local file can be selected. The selected file is then loaded into demo
	browser using the <code>file://</code> protocol. The sample files discussed
	above can be selected.
</p>

<h3>
	Navigate to Resource button
</h3>

<p>
	This button causes a HTML file from the program's resources to be loaded
	into the demo browser using the <code>res://</code> protocol.
</p>

<h2>
	Experiment Please
</h2>

<p>
	Go ahead - experiment and check the source code!
</p>

</body>

</html>
   �  8   �� H T M L R E S _ H T M L         0 	        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<!--
 * This file accompanies the article "How to load and save documents in
 * TWebBrowser in a Delphi-like way" which can be found at
 * http://www.delphidabbler.com/articles?article=14.
 * 
 * Used as example of loading HTML from resources. Stored in resources as HTML
 * named HTMLRES_HTML.
 * 
 * $Rev: 9 $
 * $Date: 2009-09-25 23:06:35 +0100 (Fri, 25 Sep 2009) $
-->
<html>
<head>
<title>
	HTML res:// File
</title>
</head>
<body>
<h1>
	Example HTML resource file
</h1>
<p>
	This page was loaded from HTML resources using the <code>res://</code>
	protocol. The file was saved using <strong>ANSI</strong> encoding.
</p>
</body>
</html>
     @   ��
 S A M P L E _ H T M L _ A N S I         0 	        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<!-- 
 * This file accompanies the article "How to load and save documents in
 * TWebBrowser in a Delphi-like way" which can be found at
 * http://www.delphidabbler.com/articles?article=14
 * 
 * Sample HTML file with ANSI encoding to be stored in RCDATA resources.
 *
 * $Rev: 26 $
 * $Date: 2010-02-05 17:08:20 +0000 (Fri, 05 Feb 2010) $
-->
<html>
<head>
<title>
	Sample ANSI HTML File
</title>
</head>
<body>
<h1>
	Sample HTML
</h1>
<p>
	This sample page is stored with <strong>ANSI encoding</strong>.
</p>
<p>
	Its purpose is to be loaded into the demo program's HTML Code window and
	either edited or loaded using the <em>Load from String</em> or <em>Load from
	Stream</em> buttons.
</p>
</body>
</html>
   e  @   ��
 S A M P L E _ H T M L _ U T F 8         0 	        ﻿<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<!-- 
 * This file accompanies the article "How to load and save documents in
 * TWebBrowser in a Delphi-like way" which can be found at
 * http://www.delphidabbler.com/articles?article=14.
 * 
 * Sample HTML file with UTF-8 encoding to be stored in RCDATA resources.
 *
 * $Rev: 26 $
 * $Date: 2010-02-05 17:08:20 +0000 (Fri, 05 Feb 2010) $
-->
<html>
<head>
<title>
	Sample UTF-8 HTML File
</title>
</head>
<body>
<h1>
	Sample HTML
</h1>
<p>
	This sample page is stored with <strong>UTF-8 encoding</strong>.
</p>
<p>
	Its purpose is to be loaded into the demo program's HTML Code window and
	either edited or loaded using the <em>Load from String</em> or <em>Load from
	Stream</em> buttons.
</p>
<p>
	<strong>WARNING:</strong> Using the <em>Save to String</em> and <em>Save to
	Stream</em> with this code loaded into the browser control may cause
	unexpected results in demos compiled without Unicode support. Non-Unicode
	versions of <em>UWebBrowserWrapper</em> do not fully support non-ANSI
	encodings.
</p>
</body>
</html>
   �  D   ��
 S A M P L E _ H T M L _ U C S 2 L E         0 	        ��< ! D O C T Y P E   H T M L   P U B L I C   " - / / W 3 C / / D T D   H T M L   3 . 2   F i n a l / / E N " >  
 < ! - -    
   *   T h i s   f i l e   a c c o m p a n i e s   t h e   a r t i c l e   " H o w   t o   l o a d   a n d   s a v e   d o c u m e n t s   i n  
   *   T W e b B r o w s e r   i n   a   D e l p h i - l i k e   w a y "   w h i c h   c a n   b e   f o u n d   a t  
   *   h t t p : / / w w w . d e l p h i d a b b l e r . c o m / a r t i c l e s ? a r t i c l e = 1 4  
   *    
   *   S a m p l e   H T M L   f i l e   w i t h   U C S - 2   L i t t l e   E n d i a n   e n c o d i n g   t o   b e   s t o r e d   i n   R C D A T A  
   *   r e s o u r c e s .  
   *  
   *   $ R e v $  
   *   $ D a t e $  
 - - >  
 < h t m l >  
 < h e a d >  
 < t i t l e >  
 	 S a m p l e   U C S - 2   L i t t l e   E n d i a n   H T M L   F i l e  
 < / t i t l e >  
 < / h e a d >  
 < b o d y >  
 < h 1 >  
 	 S a m p l e   H T M L  
 < / h 1 >  
 < p >  
 	 T h i s   s a m p l e   p a g e   i s   s t o r e d   w i t h   < s t r o n g > U C S - 2   L i t t l e   E n d i a n  
 	 e n c o d i n g < / s t r o n g > .  
 < / p >  
 < p >  
 	 I t s   p u r p o s e   i s   t o   b e   l o a d e d   i n t o   t h e   d e m o   p r o g r a m ' s   H T M L   C o d e   w i n d o w   a n d  
 	 e i t h e r   e d i t e d   o r   l o a d e d   u s i n g   t h e   < e m > L o a d   f r o m   S t r i n g < / e m >   o r   < e m > L o a d   f r o m  
 	 S t r e a m < / e m >   b u t t o n s .  
 < / p >  
 < p >  
 	 < s t r o n g > W A R N I N G : < / s t r o n g >   U s i n g   t h e   < e m > S a v e   t o   S t r i n g < / e m >   a n d   < e m > S a v e   t o  
 	 S t r e a m < / e m >   w i t h   t h i s   c o d e   l o a d e d   i n t o   t h e   b r o w s e r   c o n t r o l   m a y   c a u s e  
 	 u n e x p e c t e d   r e s u l t s   i n   d e m o s   c o m p i l e d   w i t h o u t   U n i c o d e   s u p p o r t .   N o n - U n i c o d e  
 	 v e r s i o n s   o f   < e m > U W e b B r o w s e r W r a p p e r < / e m >   d o   n o t   f u l l y   s u p p o r t   n o n - A N S I  
 	 e n c o d i n g s .  
 < / p >  
 < / b o d y >  
 < / h t m l >  
 