main_food = ['turkey']
main_bill = [1000]
side_food = ['salad', 'roll', 'mac and cheese']
side_bill = [0.01, 0.50, 10]

class Cash_Register

  def initialize(main_food, main_bill, side_food, side_bill)
    @main_food = main_food
    @main_bill = main_bill
    @side_food = side_food
    @side_bill = side_bill
    @wallet = 1200
    @final_check = nil
    @total_bill = nil
  end

  def all_food
    @all_food = @main_food.concat(@sides_food)
  end

  def order_total
    @total_bill = @main_bill.concat(@side_bill)
    @final_check = @total_bill.inject(0, &:+)
  end

#   max = name.group_by(&:length).max.first

# name.zip(age, hair_color).each do |name, age, hair_color|
#   puts "%-#{max}s %s %s" % [name, age, hair_color]
# end
  def reciept
    check = @final_check
    mains = @main_food[0]
    puts "***************"
    puts "Your main dish is: #{mains}"
    puts "***************"
    puts "Your side dish(s) are:"
    @side_food.each do |food|
      puts food 
    end
    puts "***************"
    puts "your total is $#{@final_check}"
  end

  def checkout
    if order_total >= @wallet
      puts "you have insufficient funds to pay for your meal"
    else
      puts reciept
      @wallet = @wallet - @final_check
      puts "you have #{@wallet.round(2)} remaining"
    end


  end


  #add up total
  #list everything on the order
  #clear eveything and start again
  #reject a payment if there isn't enough in the wallet
end

register = Cash_Register.new(main_food, main_bill, side_food, side_bill)

register.order_total
register.checkout