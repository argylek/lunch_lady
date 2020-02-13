# Basic Objectives:

# the user chooses from a list of main dishes
# the user chooses 2 side dish items
# computer repeats users order
# computer totals lunch items and displays total

require_relative 'user'
require_relative 'main_dishes'
require_relative 'side_dishes'

@user = User.new
@mains = Mains.new
@sides = Sides.new

def lunch_lady
end