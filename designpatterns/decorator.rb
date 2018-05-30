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