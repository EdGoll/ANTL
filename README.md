# ANTL
repo para definicion de lenguajes

[![Build Status](https://travis-ci.org/antlr4ide/antlr4ide.png?branch=master)](https://travis-ci.org/antlr4ide/antlr4ide)
[ ![Download](https://api.bintray.com/packages/jknack/antlr4ide/antlr4ide/images/download.png) ](https://bintray.com/jknack/antlr4ide/antlr4ide/_latestVersion)

ANTLR 4 IDE
=========

![ANTLR 4 IDE](https://raw.github.com/jknack/antlr4ide/master/updates/screenshots/full.png)


Features
=========

* ANTLR 4.x (see also [official ANTLR website](http://www.antlr.org/) or [ANTLR source code](https://github.com/antlr/antlr4))
* Advanced Syntax Highlighting ([even for target language](https://raw.github.com/jknack/antlr4ide/master/updates/screenshots/target-language-highlighting.png))
* Automatic Code Generation (on save)
* Manual Code Generation (through External Tools menu)
* Code Formatter (Ctrl+Shift+F)
* [Syntax Diagrams as HTML](http://jknack.github.io/antlr4ide/Java/Javav4.g4.html)
* Live Parse Tree evaluation
* Advanced Rule Navigation between files (F3 or Ctrl+Click over a rule)
* Quick fixes


Welcome
=========

This is brand new version of the **old** [ANTLR IDE](http://antlrv3ide.sourceforge.net/). The new IDE supports ANTLR 4.x and it was created to run on Eclipse 4.x

The **old** [ANTLR IDE](http://antlrv3ide.sourceforge.net/) isn't supported anymore. When I wrote it, I was young and didn't know what was doing ;)

Don't get me wrong, the old version did a very good work from  user point of view, it just I'm not proud of the code base because is kind of complex and had a poor quality.

The main reason of complexity of the old IDE was in Dynamic Language ToolKit (DLTK) dependency. The DLTK project didn't evolve so much over the last few years and doing something in DLTK is very very complex and require a lot of work.

Now, the **new** IDE was built on [XText](http://www.eclipse.org/Xtext). [XText](http://www.eclipse.org/Xtext) is great for building DSL with Eclipse IDE support, so if you are not familiar with [XText](http://www.eclipse.org/Xtext) go and see it.

See [link to ANTLR tools](http://www.antlr.org/tools.html) for a comparison of ANTLR4IDE with other development tools for ANTLR.

Eclipse Installation
=========

Prerequisites
---------

* Eclipse 4.4 Luna Xtext Complete SDK(Needs to be version 2.7.3)
* Eclipse Faceted Project Framework (Tested with 3.4.0) Eclipse Faceted
* Project Framework JDT Enablement(Tested with 3.4.0) ANTLR 4 SDK A
* A copy of the antlr-4.x-complete.jar (4.5 at the time of writing)

Installation
---------

1. Install Eclipse (4.4 Luna)
	1. Download it from https://www.eclipse.org/downloads/
2. Install XText 2.7.3
	1. Go to ```Help > Install New Software...```
	2. Enter ```http://download.eclipse.org/modeling/tmf/xtext/updates/composite/releases/``` in the ```Work With``` textbox
	3. Hit Enter and wait for the list to load (this will take a few moments)
	4. Expand the ```Xtext``` node and check ```Xtext Complete SDK``` (ensure the version is 2.7.3x)
	5. Click ```Next```, agree to the EULA, and click finish
	6. Let the installer finish and restart Eclipse
3. Install Faceted Project Framework
	1. Go to ```Help > Install New Software...```
	2. Enter ```http://download.eclipse.org/releases/luna``` in the ```Work With``` textbox
	3. Hit Enter and wait for the list to load (this will take a few moments)
	4. In the filter text box enter ```Facet```
	5. Select ```Eclipse Faceted Project Framework``` and ```Eclipse Faceted Project Framework JDT Enablement```
	6. Click ```Next```, agree to the EULA, and click finish
	7. Let the installer finish and restart Eclipse
4. Install ANTLR 4 IDE
	1. Go to ```Help > Eclipse Marketplace...```
	2. Search for ```antlr```
	3. Choose ```ANTLR 4 IDE``` (make sure it's ANTLR 4 IDE not ANTLR IDE)
	4. Click Install
	5. Let the installer finish clicking ok if it prompts and restart Eclipse
5. Obtain a copy of antlr-4.x-complete.jar
	1. Download the file from [here](https://www.antlr.org/download/antlr-4.6-complete.jar)
	2. Save it somewhere you'll remember

Creating a project in Eclipse
---------
1. Go to ```File > New Project > Project```
2. Expand the ```General Tab``` and select ```ANTLR 4 Project``` (if you don't see this see step 4 of setup)
3. Click ```Next```, give the project a name and click ```Finish```
4. Once the project is complete right click the project and click ```Properties```
5. Go to ```Project Facets``` and click ```Convert to faceted form...``` (if you don't see this see step 3 of setup)
6. Check the ```Java``` project facet and click ```Apply``` (if you don't see this see step 3 of setup)
7. Click ```OK```, let the solution rebuild, open the properties again
8. Go to ```Java Build Path```, click the ```Source``` tab
9. Click ```Add Folder...``` and check ```Project > target > generated-sources > antlr4```, click ```OK```
10. Click the ```Libraries``` tab
11. ```Add External JARs...```, find your copy of ```antlr-4.x-complete.jar```, click ```Open```
12. Go to ```ANTLR 4 > Tool```, click ```Apply``` if a pop-up appears
13. Check ```Enable project specific settings```
14. Click ```Add```, find your copy of ```antlr-4.x-complete.jar```, click ```Open```
15. Check ```4.x```
16. Click ```Apply```, click ```Yes``` to rebuild, click ```OK``` to exit the properties

Usage
=========
The new IDE is very simple to use all the files with a ```*.g4``` extension will be opened by the ANTLR 4 Editor. So, just open a ```*.g4``` file and play with it.  
See grammars examples at https://github.com/antlr/grammars-v4

Code Generation
---------
Code is automatically generated on save if the grammar is valid. You can turn off this feature by going to: ```Window > Preferences > ANTLR 4 > Tool``` and uncheck the "Tool is activated" option. From there you can configure a couple more of options.

You can find the generated code in the ```target/generated-sources/antlr4``` (same directory as antlr4-maven-plugin)

Manual Code Generation
---------
You can fire a code generation action by selecting a ```*.g4``` file from the Package Explorer, right click: ```Run As > ANTLR 4```.

A default ANTLR 4 launch configuration will be created. You can modify the generated launch configuration by going to: ```Run > External Tools > External Tools Configurations...``` from there you will see the launch configuration and how to set or override code generation options

Syntax Diagrams
---------
To open the Syntax Diagram view go to: ```Window > Show View > Other``` search and select: **Syntax Diagram**

Eclipse Example
---------
1. Create a new ANTLR Project following the steps above
2. Create a new class with the code below 
3. Run
4. In the console write `Hello there` and Ctrl + z to send EOF to the input stream

```
    import org.antlr.v4.runtime.*;
    import org.antlr.v4.runtime.tree.*;
    public class HelloRunner 
    {
    	public static void main( String[] args) throws Exception 
    	{
    
    		ANTLRInputStream input = new ANTLRInputStream( System.in);
    
    		HelloLexer lexer = new HelloLexer(input);
    
    		CommonTokenStream tokens = new CommonTokenStream(lexer);
    
    		HelloParser parser = new HelloParser(tokens);
    		ParseTree tree = parser.r(); // begin parsing at rule 'r'
    		System.out.println(tree.toStringTree(parser)); // print LISP-style tree
    	}
```
