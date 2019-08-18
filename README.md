# ANTL
repo para definicion de lenguajes

Installation
Install Eclipse (4.4 Luna)
Download it from https://www.eclipse.org/downloads/
Install XText 2.7.3
Go to Help > Install New Software...
Enter http://download.eclipse.org/modeling/tmf/xtext/updates/composite/releases/ in the Work With textbox
Hit Enter and wait for the list to load (this will take a few moments)
Expand the Xtext node and check Xtext Complete SDK (ensure the version is 2.7.3x)
Click Next, agree to the EULA, and click finish
Let the installer finish and restart Eclipse
Install Faceted Project Framework
Go to Help > Install New Software...
Enter http://download.eclipse.org/releases/luna in the Work With textbox
Hit Enter and wait for the list to load (this will take a few moments)
In the filter text box enter Facet
Select Eclipse Faceted Project Framework and Eclipse Faceted Project Framework JDT Enablement
Click Next, agree to the EULA, and click finish
Let the installer finish and restart Eclipse
Install ANTLR 4 IDE
Go to Help > Eclipse Marketplace...
Search for antlr
Choose ANTLR 4 IDE (make sure it's ANTLR 4 IDE not ANTLR IDE)
Click Install
Let the installer finish clicking ok if it prompts and restart Eclipse
Obtain a copy of antlr-4.x-complete.jar
Download the file from here
Save it somewhere you'll remember
Creating a project in Eclipse
Go to File > New Project > Project
Expand the General Tab and select ANTLR 4 Project (if you don't see this see step 4 of setup)
Click Next, give the project a name and click Finish
Once the project is complete right click the project and click Properties
Go to Project Facets and click Convert to faceted form... (if you don't see this see step 3 of setup)
Check the Java project facet and click Apply (if you don't see this see step 3 of setup)
Click OK, let the solution rebuild, open the properties again
Go to Java Build Path, click the Source tab
Click Add Folder... and check Project > target > generated-sources > antlr4, click OK
Click the Libraries tab
Add External JARs..., find your copy of antlr-4.x-complete.jar, click Open
Go to ANTLR 4 > Tool, click Apply if a pop-up appears
Check Enable project specific settings
Click Add, find your copy of antlr-4.x-complete.jar, click Open
Check 4.x
Click Apply, click Yes to rebuild, click OK to exit the properties
Usage
The new IDE is very simple to use all the files with a *.g4 extension will be opened by the ANTLR 4 Editor. So, just open a *.g4 file and play with it.
See grammars examples at https://github.com/antlr/grammars-v4

Code Generation
Code is automatically generated on save if the grammar is valid. You can turn off this feature by going to: Window > Preferences > ANTLR 4 > Tool and uncheck the "Tool is activated" option. From there you can configure a couple more of options.

You can find the generated code in the target/generated-sources/antlr4 (same directory as antlr4-maven-plugin)

Manual Code Generation
You can fire a code generation action by selecting a *.g4 file from the Package Explorer, right click: Run As > ANTLR 4.

A default ANTLR 4 launch configuration will be created. You can modify the generated launch configuration by going to: Run > External Tools > External Tools Configurations... from there you will see the launch configuration and how to set or override code generation options

Syntax Diagrams
To open the Syntax Diagram view go to: Window > Show View > Other search and select: Syntax Diagram

Eclipse Example
Create a new ANTLR Project following the steps above
Create a new class with the code below
Run
In the console write Hello there and Ctrl + z to send EOF to the input stream
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
