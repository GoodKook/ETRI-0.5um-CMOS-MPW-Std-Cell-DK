#
# Gentle start of Python
# 	Class for Dog object
# Filename: dog_class.py
#

class Dog:
	# Initializer or constructor of the class
	def __init__(self, petname, temp):
		self.name = petname
		self.temperature = temp
		pass

	# Member function status()
	def status(self):
		print("Name: ", self.name)
		print("Temp: ", self.temperature)
		pass

	def setTemperature(self, temp):
		self.temperature = temp
		pass

	# This Dog can bark()
	def bark(self):
		print("woof!")
		pass

	pass

if __name__=="__main__" :
	sizzles=Dog("sizzles", 37)
	mutleys=Dog("mutleys", 36)

	sizzles.status()
	sizzles.bark()

	mutleys.status()
	mutleys.bark()

	sizzles.setTemperature(40)
	sizzles.status()
