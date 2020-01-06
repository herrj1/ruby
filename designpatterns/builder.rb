class BoardBuilder
	def initialize(width, height)
		@board = Board.new
		@board.width = width
		@board.height = height
		@board.tiles = []
		@board.monsters = []
	end
	
	def add_tiles(n)
		n.times{ @board.tiles << Tile.new }
	end
	def add_monsters(n)
		n.times{ @board.monsters << Monster.new }
	end
	def board
		@board
	end
end

class Board
	attr_accessor :width, :height, :tiles, :monsters
	def initialize
	end
end

class Tile; end
class Monster; end

#sample uses

builder = BoardBuilder.new 2, 3
puts builder.board

# Draw the boards
board = builder.board
puts board.width

# Add components
builder.add_tiles(3)
builder.add_monsters(2)
puts board.tiles.size

# set size
puts board.monsters.size
