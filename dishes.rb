class Dishes
  attr_reader :food_array, :user_order
  def initialize(food, course)
    @food_array = food
    @user_order = []
    @user_food = []
    @course = course
  end

  def show_dishes
    @food_array.each_with_index do |food, index| 
      price = food[:price]
      dish = food[:dish]
      puts "#{index + 1}) #{dish} $#{price}"
    end
  end
  def food_choices
    if @course == "main"
      puts "What would you like as your main course?"
    elsif @course == "side"
      puts "Which side dish would you like?"
    else
      puts "Errror"
    end
    show_dishes
    user_choice = gets.to_i
    case user_choice
      when 1 
        #add meat loaf  
        @user_order << @food_array[0]
      when 2
        #add the chicken
        @user_order << @food_array[1]
      when 3
        #add the lasagna
        @user_order << @food_array[2]
      else
        puts "That isn't being served today."
      end
    end 
end

# @mains = Main_Dishes.new
# @mains.food_choices
# @mains.show_food_cost
  #probably want this to be read only so people can't mess with the list
  #need to have methods to: 
  #have my array
  #list my array
  #make a choice(and store choice)