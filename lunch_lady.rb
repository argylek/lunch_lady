require_relative 'user'
require_relative 'dishes'
require_relative 'register'
require_relative 'menu'

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
@register = Cash_Register.new(@sides.user_order, @mains.user_order)
@menu= Menu.new

def lunch_lady
  puts "Hello, and welcome to the virtual lunch room!"
  @user.customer_name
  @menu.seperator
  @user.customer_wallet
  @register.wallet = @user.money
  @menu.seperator
  main_menu
  @mains.user_order = []
  @sides.user_order = []

end

def main_menu
  loop do
    @menu.main_menu
    menu_selection = gets.chomp.to_i
    case menu_selection
      when 1
          @mains.food_choices
      when 2
          @sides.food_choices
      when 3
          @register.reciept
      when 4
          @register.checkout
      when 5
          @register.restart
      when 6
        break
      else
        puts "invalid choice"
      end
  end
end
lunch_lady

# Basic Objectives:

# the user chooses from a list of main dishes
# the user chooses 2 side dish items
# computer repeats users order
# computer totals lunch items and displays total