#! /bin/sh

antlr4 -Dlanguage=JavaScript MySqlLexer.g4
antlr4 -Dlanguage=JavaScript MySqlParser.g4

antlr4 -Dlanguage=TypeScript MySqlLexer.g4
antlr4 -Dlanguage=TypeScript MySqlParser.g4
