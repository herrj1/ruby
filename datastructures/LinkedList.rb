class Node
	attr_accessor :value, :next_node
	def initialize(value, next_node=nil)
		@value = value
		@next = next_node
	end
end

class LinkedList
	def initialize(value)
		@head = Node.new(value)
	end
	
	def add(value)
		current = @head
		while !current.next_node.nil?
			current = current.next_node
		end
		current.next_node = Node.new(value)
	end
end

#Example:
numbers = LinkedList.new
numbers.add(30)
numbers.add(50)
numbers.add(23)
