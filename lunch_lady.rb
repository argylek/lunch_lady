require_relative 'user'
require_relative 'dishes'
# require_relative 'side_dishes'

mains = [ 
  {dish: "Meat Loaf", price: 5, nutrition: nil},
  {dish: "Chicken", price: 6, nutrition: nil},
  {dish: "Vegtable Lasagna", price: 4, nutrition: nil}
 ]
 sides = [
   {dish: "Mashed Potatoes", price: 2, nutrition: nil},
   {dish: "Corn", price: 1, nutrition: nil},
   {dish: "Tomato Soup", price: 2, nutrition: nil}
 ]
#  main dishes and side items have descriptions with them and the user has an option to view the description /nutritional facts before they order (hint: think hashes)
@user = User.new
@mains = Dishes.new(mains, "main")
@sides = Dishes.new(sides, "side")
@register = Cash_Regsister.new(@mains.user_order, @mains.user_bill, @sides.user_order, @sides.user_bill, @user.money)

def lunch_lady
  # the program is in a loop to keep asking the user to make new orders until they type 'quit' at any time
  # display to the user not only their total but the total fat content/calories / carbs / etc...
end

# @mains.food_choices
# @sides.food_choices

# @mains.show_food_cost
# @sides.show_food_cost

# Basic Objectives:

# the user chooses from a list of main dishes
# the user chooses 2 side dish items
# computer repeats users order
# computer totals lunch items and displays total