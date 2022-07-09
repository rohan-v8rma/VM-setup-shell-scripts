#!/bin/bash

:'
Each case statement starts with the "case" KEYWORD, followed by the case expression and the "in" KEYWORD. 
The statement ends with the "esac" KEYWORD.

You can use multiple patterns separated by the "|" operator. The ")" operator terminates a pattern list.

A pattern can have special characters.

A pattern and its associated commands are known as a clause.

Each clause must be terminated with ";;".
'

# Syntax :

:'
case EXPRESSION in

  PATTERN_1)
    STATEMENTS
    ;;

  PATTERN_2)
    STATEMENTS
    ;;

  PATTERN_N)
    STATEMENTS
    ;;

  *) 
    STATEMENTS
    #this case is for invalid inputs
    ;;
esac
'

