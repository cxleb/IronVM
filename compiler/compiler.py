from compiler import lexer

def compile_il():
    file = open("test.il", "r")
    file_contents = file.read()
    file.close()
    
    tokens = lexer.lex(file_contents)
	
	ast = parser.parse(tokens)

    for tok in tokens:
        print(tok)

if __name__ == "__main__":
    compile_il()
    
