# main = [{dish: 'turkey', price: 1000}]
# side = [
#     {dish: 'salad', price: 1, nutrition: nil},
#     {dish: 'roll', price: 1, nutrition: nil},
#     {dish: 'mac and cheese', price: 10,nutrition: nil}
#   ]

class Cash_Register
  attr_accessor :wallet, :final_check, :side, :main

  def initialize(side, main)
    @wallet = nil
    @final_check = nil
    @total_bill = nil 
    @side = side
    @main = main
    
  end

  def order_total
    sides = @side.map {|x| x[:price]}
    sides_and_main = sides << @main[0][:price]
    total_bill = sides_and_main.sum
    @final_check = total_bill
  end

  def reciept
    order_total
    main_food = @main[0][:dish]
    main_price = @main[0][:price]
    side = @side
    # .map {|x| x[:dish]}
    puts "***************"
    puts "Your main dish is: #{main_food} -- $#{main_price}"
    puts "***************"
    puts "Your side dish(s) are:"
    side.each do |side|
      puts "#{side[:dish]} -- $#{side[:price]}"
    end
    puts "***************"
    puts "your total is $#{@final_check}"
    
  end

  def checkout
    order_total
    final = @final_check.to_i 
    wallet = @wallet.to_i
    if final >= wallet
      puts "you have insufficient funds to pay for your meal"
    else
      puts reciept
      @wallet = wallet - final
      puts "you have $#{@wallet.round(2)} remaining"
    end
    restart
  end
  #add up total
  #list everything on the order
  #clear eveything and start again
  #reject a payment if there isn't enough in the wallet
  def restart
    @side.clear
    @main.clear 
  end
end

# register = Cash_Register.new(side, main)

# register.order_total
# register.reciept
# register.checkout