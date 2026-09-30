%{
 #include<stdio.h>
 #include<stdlib.h>
int yylex(void);
void yyerror(const char *s);
%}
 %token A B
%%
	S:
	   A S B 
	  |/* epsilon */
	  ;
%%
void yyerror(const char *s)
	{
	printf("String Rejected\n");
	}
int main()
{
printf("Grammer:S-> aSb | epsilon\n");
	printf("Enter the input string:");	   
	if(yyparse() == 0)
		printf("String Accepted\n");
	return 0;
}
