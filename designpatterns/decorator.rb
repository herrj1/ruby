class ItemDecorator
	def initialize(item)
		@item = item
	end
	def use
		@item.use
	end
end

class MagicItemDecorator < ItemDecorator
	def price
		@item.price * 3
	end
	
	def description
		@item.description + "Magic"
	end
end

class MasterpieceItemDecorator < ItemDecorator
	def price
		@item.price * 2
	end
	
	def description
		@item.description + "Masterpiece"
	end
end

class Item
	attr_reader :price, :description
	def initialize
		@price = 10
		@description = "Item"
	end
	
	def use
		"use item for something"
	end
end


#sample run

item = Item.new
magic_item = MagicItemDecorator.new(item)
puts magic_item.price

puts magic_item.description


masterpiece_item = MasterpieceItemDecorator.new(item)
puts masterpiece_item.price

puts masterpiece_item.description

item.use
magic_item.use
masterpiece_item.use
