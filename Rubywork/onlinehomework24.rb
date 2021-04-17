class Cat
  def initialize(string)
    @string = string
  end
  def speak
    puts "#{@string} meows"
  end
end

kitty = Cat.new('Mr Whiskers')
kitty.speak   # 印出 Mr Whiskers meows.

nancy = Cat.new('Lamp')
nancy.speak   # 印出 Lamp meows.

sherly = Cat.new('$$Money Bags$$')
sherly.speak  # 印出 $$Money Bags$$ meows.

class Ball
  # def initialize(string = "regular")
  #   @string = string
  # end

  # def ball_type
  #   @string
  # end   思路對 習慣不對
  attr_reader :ball_type
  def initialize(ball_type = "regular")
    @ball_type = ball_type
  end

  # def ball_type
  #   @ball_type
  # end
end

ball1 = Ball.new
puts ball1.ball_type   # 印出 regular

ball2 = Ball.new("super")
puts ball2.ball_type   # 印出 super



def format_money(amount)
  "$#{"%.2f" % amount}"
end

puts format_money(39.99)  # 印出 $39.99
puts format_money(39.90)  # 印出 $39.90
puts format_money(39)     # 印出 $39.00



def twice_as_old(father, son)
  # father + n = 2 * ( son + n )
  # father + n = 2son + 2n
  # n = father - 2 * son
  father - 2 * son
end

puts twice_as_old(36,7)   # 22
puts twice_as_old(65,30)  # 5
puts twice_as_old(42,21)  # 0
puts twice_as_old(22,1)   # 20
puts twice_as_old(29,0)   # 29

def powers_of_two(n)
  (0..n).map { |x| 2 ** x}
end

p powers_of_two(0)   # [1]
p powers_of_two(1)   # [1, 2]
p powers_of_two(4)   # [1, 2, 4, 8, 16]