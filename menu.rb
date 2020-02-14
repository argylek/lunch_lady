class Menu
  def initialize
  end
  def seperator
    puts "*************"
  end
  def main_menu
    seperator
    puts "Please make a selection"
    seperator
    puts "1) Chose a main dish(up to one)"
    puts "2) Choose a side dish(as many as you want)!"
    puts "3) See whats in my order"
    puts "4) Checkout"
    puts "5) Clear and start again"
    puts "6) Quit"
    seperator
  end
end