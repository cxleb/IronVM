from compiler import lexer
from compiler.parser import Parser

def compile_il():
	file = open("test.il", "r")
	file_contents = file.read()
	file.close()
	
	tokens = lexer.lex(file_contents)
	
	parser = Parser(tokens)
	
	ast = parser.parse()
	
	for node in ast:
		print(node+":")
		for instruction in ast[node]:
			accum = "" 
			for word in instruction:
				accum += word
				accum += " "
			print ("\t", accum)

if __name__ == "__main__":
	compile_il()
    
