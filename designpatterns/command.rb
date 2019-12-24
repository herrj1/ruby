class Turn
	def initialize
		@commands = []
	end
	def run_command(command)
		command.execute
		@commands << command
	end
	def undo_command
		@commands.pop.unexecute
	end
end
class Hero
	attr_accessor :money, :health
	
	def initialize
		@money = 0
		@health = 100
	end
end
class GetMoneyCommand
	def initialize(hero)
		@hero = hero
	end
	
	def execute
		@hero.money += 10
	end
	
	def unexecute
		@hero.money -= 10
	end
end
#heal commands
class HealCommand
	def initialize(hero)
		@hero = hero
	end
	
	def execute
		@hero.health += 10
	end
	
	def unexecute
		@hero.health -= 10
	end
end


#Sample run
hero = Hero.new
get_money = GetMoneyCommand.new hero
heal = HealCommand.new hero
turn = Turn.new
turn.run_command(heal)
turn = Turn.new
turn.run_command(heal)
puts hero.health

#execute more commands
turn.run_command(get_money)
puts hero.money

#undo command
turn.undo_command
puts hero.money
