class Parser():
	def __init__(self, tokens):
		self.tokens = tokens
		self.count = len(tokens)
		self.position = 0
		self.func = []
		self.registers = ["0","1","2","3","4","5","6","7","8","9","8","9","11","12","13","14","15"]
	

	def check_ident(self, str):
		outcome = True
		for c in str:
			if c.isalnum() == False:
				if c != '_':
					outcome = False
		return outcome
	
	def get_next_token(self):
		token = self.tokens[self.position]
		self.position += 1
		return token
	
	def check_register_token(self):
		# we can assume that the '@' token has been checked and eaten
		register = self.get_next_token()
		if register not in self.registers:
			raise Exception("Error: found unappropriate register name: "+register)
		else:
			return register
	
	def check_register_assignment(self):
		reg1 = self.check_register_token()
			
		char = self.get_next_token()
		if char != '=' :
			raise Exception("Error: Found unknown character in register assignment: "+char)
			
		equals = self.get_next_token()
		if equals == "@":
			reg2 = self.check_register_token()
			self.func.append(["movr", reg2, reg1])
		elif equals.isnumeric():
			self.func.append(["movc", reg1, equals])
		else:
			raise Exception("Error: Found unknown character in register assignment: "+equals)
		

	def parse(self):
		tree = {}
		#tree["main"] = [["movc", "1", "2"], ["movr", "2", "1"]]
		
		in_func = False
		cur_func = ""
		accum = ""
		
		while self.position < self.count:
			token = self.get_next_token()
			if in_func :
				if token == "}":
					tree[cur_func] = self.func
					in_func = False
				elif token == "@":
					self.check_register_assignment()
				else:
					raise Exception("Found unkown token in function: "+token)
			elif token == "{":
				if self.check_ident(accum):
					in_func = True
					cur_func = accum
					accum = ""
					self.func = []
			elif self.check_ident(token):
				accum = token
			else:
				raise Exception("Error: Found unidentified token outside of function: " + token)
		return tree