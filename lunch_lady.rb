# Basic Objectives:

# the user chooses from a list of main dishes
# the user chooses 2 side dish items
# computer repeats users order
# computer totals lunch items and displays total

require_relative 'user'
require_relative 'main_dishes'
require_relative 'side_dishes'

# main_courses = [
#   {dish: "Meat Loaf", price: 5, nutrition: nil}
#   {dish: "Chicken", price: 6, nutrition: nil}
#   {dish: "Vegtable Lasagna", price: 4, nutrition: nil} 
# ]
@user = User.new
@mains = Main_Dishes.new(main_courses)
@sides = Sides.new

def lunch_lady
  
end

@mains.choose_main_dish