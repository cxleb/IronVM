class Parser():
	def __init__(self, tokens):
		self.tokens = tokens
		self.count = len(tokens)
		self.position = 0
		self.func = []
		self.registers = ["0","1","2","3","4","5","6","7","8","9","8","9","11","12","13","14","15"]
		self.funcs = []

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
	
	def check_assignment(self, reg1):
		equals = self.get_next_token()
		if equals == "@":
			reg2 = self.check_register_token()
			self.func.append(["movr", reg1, reg2])
		elif equals.isnumeric():
			self.func.append(["movc", reg1, equals])
		elif self.check_ident(equals):
			self.func.append(["load", equals, reg1])
		else:
			raise Exception("Error: Found unknown character in register assignment: "+equals)
			
	def check_add(self, reg1):
		equals = self.get_next_token()
		if equals == "@":
			reg2 = self.check_register_token()
			self.func.append(["add", reg1, reg2])
		else:
			raise Exception("Error: Found unknown character in add statement: "+equals)
			
	def check_sub(self, reg1):
		equals = self.get_next_token()
		if equals == "@":
			reg2 = self.check_register_token()
			self.func.append(["sub", reg1, reg2])
		else:
			raise Exception("Error: Found unknown character in minus statement: "+equals)
			
	def check_mul(self, reg1):
		equals = self.get_next_token()
		if equals == "@":
			reg2 = self.check_register_token()
			self.func.append(["mul", reg1, reg2])
		else:
			raise Exception("Error: Found unknown character in mul statement: "+equals)
			
	def check_div(self, reg1):
		equals = self.get_next_token()
		if equals == "@":
			reg2 = self.check_register_token()
			self.func.append(["div", reg1, reg2])
		else:
			raise Exception("Error: Found unknown character in division statement: "+equals)
	
	def check_register(self):
		reg1 = self.check_register_token()
			
		char = self.get_next_token()
		if char == '=' :
			self.check_assignment(reg1)
		elif char == '+' :
			self.check_add(reg1)
		elif char == '-' :
			self.check_sub(reg1)
		elif char == '*' :
			self.check_mul(reg1)
		elif char == '/' :
			self.check_div(reg1)
		else:
			raise Exception("Error: Found unknown character in register statement: "+char)
			
	def check_identity(self, ident):
		char = self.get_next_token()
		if char == '=':
			char2 = self.get_next_token()
			if char2 == "@":
				reg = self.check_register_token()
				self.func.append(["store", ident, reg])
			else:
				raise Exception("Error: Expected register was given in literal assignment: "+char)
		elif ident == 'call':
			if self.check_ident(char):
				self.func.append(["call", char])
			else:
				raise Exception("Error: Did not provide identity in function call: "+char)
		else:
			raise Exception("Error: Found unknown character in identity statement: "+char)
		

	def parse(self):
		tree = {}
		
		in_func = False
		cur_func = ""
		accum = ""
		
		while self.position < self.count:
			token = self.get_next_token()
			if in_func :
				if token == "}":
					self.func.append(["ret"])
					self.funcs.append(cur_func)
					tree[cur_func] = self.func
					in_func = False
				elif token == "@":
					self.check_register()
				elif self.check_ident(token):
					self.check_identity(token)
				else:
					raise Exception("Found unkown token in function: "+token)
			elif token == "{":
				if self.check_ident(accum):
					if accum in tree:
						raise Exception("Error: function defined twice: " + accum)
					else:
						in_func = True
						cur_func = accum
						accum = ""
						self.func = []
			elif self.check_ident(token):
				accum = token
			else:
				raise Exception("Error: Found unidentified token outside of function: " + token)
		return tree
	
	def get_func_list(self):
		return self.funcs