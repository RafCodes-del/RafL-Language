#ifndef TOKEN_H
#define TOKEN_H
typedef struct TOKEN_STRUCT
{
	enum
	  {
             Token_ID,
	     TOKEN_EQUALS,
	     TOKEN_STRING,
	     TOKEN_SEMI,
	     TOKEN_LPAREN
	     TOKEN_RPAREN
	  } type;

	char* value;
} token_T;

token_T* init_token(int type, char* value)
#endif