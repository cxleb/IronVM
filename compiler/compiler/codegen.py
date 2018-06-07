
class CodeGen():
	def __init__(self, ast):
		self.ast = ast
		self.idents = []
		self.text = []
		
	def get_num_bytes(self, num):
		b1 = num & 0xff
		b2 = (num >> 8) & 0xff
		b3 = (num >> 16) & 0xff
		b4 = (num >> 24) & 0xff
		return [b1, b2, b3, b4]
		
	def compile_func(self, name):
		func = self.ast[name]
		self.text = []
		for ins in func:
			if ins[0] == "movr":
				self.text.append(0x01)
				self.text.append(int(ins[1]))
				self.text.append(int(ins[2]))
			elif ins[0] == "movc":
				self.text.append(0x02)
				self.text.append(int(ins[1]))
				self.text.extend(self.get_num_bytes(int(ins[2])))
			elif ins[0] == "add":
				self.text.append(0x10)
				self.text.append(int(ins[1]))
				self.text.append(int(ins[2]))
			elif ins[0] == "sub":
				self.text.append(0x11)
				self.text.append(int(ins[1]))
				self.text.append(int(ins[2]))	
			elif ins[0] == "mul":
				self.text.append(0x12)
				self.text.append(int(ins[1]))
				self.text.append(int(ins[2]))	
			elif ins[0] == "div"
				self.text.append(0x13)
				self.text.append(int(ins[1]))
				self.text.append(int(ins[2]))	
		
	def generate(self):
		header = [73, 88, 1] # magic_1 , magic_2, version_num
		text = []
		
		for func in self.ast:
			self.compile_func(func)
			text.extend(self.text)
		
		bytes = []
		bytes.extend(header)
		bytes.extend(text)
		return bytearray(bytes)