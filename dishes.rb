class Dishes
  attr_reader :food_array, :user_order, :user_bill
  def initialize(food, course)
    @food_array = food
    @user_order = []
    @user_bill = []
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
    show_dishes
    if @course == "main"
      puts "What would you like as your main course?"
    elsif @course == "side"
      puts "Which side dish would you like?"
    else
      puts "Errror"
    end
    user_choice = gets.to_i
    case user_choice
      when 1 
        #add meat loaf  
        @user_order << @food_array[0][:dish]
        @user_bill << @food_array[0][:price]
      when 2
        #add the chicken
        @user_order << @food_array[1][:dish]
        @user_bill << @food_array[1][:price]
      when 3
        #add the lasagna
        @user_order << @food_array[2][:dish]
        @user_bill << @food_array[2][:price]
      else
        puts "That isn't being served today."
      end
      return @user_order
      return @user_bill
    end
    def show_food_cost
      puts @user_order
      puts @user_bill
    end
    # def more_sides
    #   puts "would you like another side?"
    #   user_input = gets.chomp.downcase.to_s
    #   case user_input
    #   when "y"
    #     food_choices
    #   when "n"

    # end
end

# @mains = Main_Dishes.new
# @mains.food_choices
# @mains.show_food_cost
  #probably want this to be read only so people can't mess with the list
  #need to have methods to: 
  #have my array
  #list my array
  #make a choice(and store choice)