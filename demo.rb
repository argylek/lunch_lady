user_hash = {name: 'blah', age: 23}
#class refresh
class User
  attr_accessor :name, :age
  def initialize(name_x, age_x)
    @name = name_x
    @age = age_x
  end
  def say_hello
    puts "Hello I am, #{@name}"
  end
end

john = User.new('John', 32)

puts john.name
p john.age

john.say_hello

john1 = { name:'Joh', age: 33}

p john1[:name]
p john1[:age]