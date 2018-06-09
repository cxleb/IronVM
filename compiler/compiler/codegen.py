
class CodeGen():
	def __init__(self, ast, func_list):
		self.ast = ast
		self.idents = []
		self.mem_count = 0
		self.frame = {}
		self.funcs = {}
		self.func_list = func_list
		
	def get_num_bytes(self, num):
		b1 = num & 0xff
		b2 = (num >> 8) & 0xff
		b3 = (num >> 16) & 0xff
		b4 = (num >> 24) & 0xff
		return [b1, b2, b3, b4]
	
	def make_ident(self, name, size):
		if name in self.frame:
			return self.get_ident(name)
		else:		
			pos = self.mem_count
			self.frame[name] = pos
			self.mem_count += size
			return pos
			
	def get_ident(self, name):
		if name in self.frame:		
			pos = self.frame[name]
			return pos
		else:
			raise Exception("Error: Cannot find variable: "+name)
		
		
	def compile_func(self, name):
		func = self.ast[name]
		self.frame = {}
		text = []
		for ins in func:
			if ins[0] == "movr":
				text.append(0x01)
				text.append(int(ins[1]))
				text.append(int(ins[2]))
			elif ins[0] == "movc":
				text.append(0x02)
				text.append(int(ins[1]))
				text.extend(self.get_num_bytes(int(ins[2])))
			elif ins[0] == "add":
				text.append(0x10)
				text.append(int(ins[1]))
				text.append(int(ins[2]))
			elif ins[0] == "sub":
				text.append(0x11)
				text.append(int(ins[1]))
				text.append(int(ins[2]))	
			elif ins[0] == "mul":
				text.append(0x12)
				text.append(int(ins[1]))
				text.append(int(ins[2]))	
			elif ins[0] == "div":
				text.append(0x13)
				text.append(int(ins[1]))
				text.append(int(ins[2]))
			elif ins[0] == "store":
				text.append(0x06)
				pos = int(self.make_ident(ins[1], 4))
				text.extend(self.get_num_bytes(pos))
				text.append(int(ins[2]))
			elif ins[0] == "load":
				text.append(0x06)
				pos = int(self.get_ident(ins[1]))
				text.extend(self.get_num_bytes(pos))
				text.append(int(ins[2]))
			elif ins[0] == "call":
				text.append("call")
				text.append(ins[1])
			elif ins[0] == "ret":
				text.append(0x21)
		self.funcs[name] = text
	
	def adjust_call(self, func):
		count = 0
		while count < len(self.funcs[func]):
			if self.funcs[func][count] == "call":
				self.funcs[func][count] = 0x20
				count += 1
				name = self.funcs[func][count]
				found=False
				pos=0
				for clazz in self.func_list:
					if clazz != name:
						pos += len(self.funcs[clazz])
					else:
						found = True
						break
				if not found:
					raise Exception("Error: cannot find function: "+name)
				nums = self.get_num_bytes(pos)
				self.funcs[func][count] = nums[0]
				count += 1
				self.funcs[func].insert(count, nums[1])
				count += 1
				self.funcs[func].insert(count, nums[2])
				count += 1
				self.funcs[func].insert(count, nums[3])
			count += 1
		
	def generate(self):
		header = [73, 88, 1] # magic_1 , magic_2, version_num
		text = []
		
		for func in self.func_list:
			print(func)
			self.compile_func(func)
			
		for func in self.func_list:
			self.adjust_call(func)
			text.extend(self.funcs[func])
		
		entry = 0
		found = False
		for func in self.func_list:
			if func != "main":
				entry += len(self.funcs[func])
			else:
				found = True
				break
		if not found:
			raise Exception("Error: cannot find main function!")
			
		print(entry)
		
		bytes = []
		bytes.extend(header)
		bytes.extend(text)			
		return bytearray(bytes)