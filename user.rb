class User
  attr_accessor :name, :money 
  def initializer
    @name = name
    @money = money
  end
  def customer_name
    puts "What is your name?"
    @name = gets.chomp.to_s
    puts "Nice to have you #{@name}"
  end
  def customer_add_to_wallet
    puts "How much money do you have today?"
    @money = gets.chomp
    puts "Well well well, #{@name} looks like you've got $#{@money} burning a hole in your pocket. Lets get lunch."
  end
end

user = User.new
user.customer_name
puts @name
user.customer_add_to_wallet
puts @money