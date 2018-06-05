def lex(contents):
	characters = ["{", "}", "@", "=", "+", "-", "/", "*", ">"]

	content = list(contents)
	tokens = []
	accum = ""
	
	for c in content:
		if c == " " or c == "\t" or c == "\n":
			if accum != "":
				tokens.append(accum)
				accum = ""
		elif c in characters:
			if accum != "":
				tokens.append(accum)
				accum = ""
			tokens.append(c)
		else:
			accum += c
	if accum != "":
		tokens.append(accum)
	
	return tokens