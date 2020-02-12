#!/usr/bin/ruby -w

#define a classes
class Box
	@@brand = ''
	#constructor method
	def initialize(w,h)
		@width, @height = w, h
	end
	
	def getWidth
		@width
	end
	
	def getHeight
		@height
	end
	
	def setWidth=(value)
		@width = value
	end
	
	def setHeight=(value)
		@height = value
	end
	
	def setBrand=(value)
		@@brand = value
	end
	
	def getBrand
		@@brand
	end
	
	def printDetails()
		#Box.setBrand()
		puts "Box brand : #@@brand"
		puts "Box size : h #@height X W #@width"
		
	end
end


box1 = Box.new(10, 20)
box1.setBrand = 'Sony'
box1.printDetails()
