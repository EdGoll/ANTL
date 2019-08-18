grammar Simple;

@parser::header{
	import java.util.Map;
	import java.util.HashMap;
}
@parser::members{
	Map<String,Object> symbolTable = new HashMap<String,Object>(); 
}

program: PROGRAM ID BRACKET_OPEN 
	sentence*
	BRACKET_CLOSE;

sentence: var_decl | var_assign | println;
                    
var_decl: VAR ID SEMI_COLON       
	//{System.out.println("Declarando Variable");};             
	{symbolTable.put($ID.text,0);}; 

var_assign: ID ASSIGN expression SEMI_COLON    
	//{System.out.println("Asignando Variable");};
	{symbolTable.put($ID.text,$expression.value);};
	
println: PRINTLN expression  SEMI_COLON  
	{System.out.println($expression.value);};
	
expression returns [Object value]: 
	expression PLUS expression
	| NUMBER {$value = Integer.parseInt($NUMBER.text);}
	| ID {$value = symbolTable.get($ID.text);
		
	}; 

PROGRAM: 'program';
VAR: 'var';
PRINTLN: 'println';

PLUS: '+';
MINUS: '-';
MULT: '*';
DIV: '/';

AND: '&&';
OR: '||';
NOT: '!';

GT: '>';
LT: '<';
GEQ: '>=';
LEQ: '<=';
EQ: '==';
NEQ: '!=';

ASSIGN: '=';

BRACKET_OPEN: '{';
BRACKET_CLOSE: '}';
PAR_OPEM: '(';
PAR_CLOSE: ')';

SEMI_COLON: ';';

ID: [a-zA-Z_][a-zA-Z0-9_]*;
NUMBER: [0-9]+;
WS:[ \t\n\r]+ -> skip;

