class Main_Dishes
  #probably want this to be read only so people can't mess with the list
  #need to have methods to: 
  #have my array
  #list my array
  #make a choice(and store choice)
  attr_reader :food_array, :user_order

  def initialize
    @food_array = [
      {dish: "Meat Loaf", price: 5, nutrition: nil},
      {dish: "Chicken", price: 6, nutrition: nil},
      {dish: "Vegtable Lasagna", price: 4, nutrition: nil}
    ]
    @user_order = []

    @user_bill = []
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
      puts "What would you like as your main course?"
      user_choice = gets.to_i
    
      case user_choice
        when 1 
          #add meat loaf to var 
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
end

@mains = Main_Dishes.new
@mains.food_choices
@mains.show_food_cost