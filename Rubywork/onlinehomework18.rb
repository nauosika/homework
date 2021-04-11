def opposite(n)
  
    n - n - n
    #-n    
end

puts opposite(1)   # -1
puts opposite(14)  # -14
puts opposite(-34) # 34

def repeat_str(n, s)
  p s*n
end

repeat_str(6, "I")     # 印出 IIIIII
repeat_str(5, "Hello") # 印出 HelloHelloHelloHelloHello

def nearest_sq(n)
  num = (n ** 0.5).round
  num * num
  # (n ** 0.5).round ** 2
  # Math.sqrt(n).round ** 2
end

puts nearest_sq(1)    # 1
puts nearest_sq(2)    # 1
puts nearest_sq(10)   # 9
puts nearest_sq(111)  # 121
puts nearest_sq(9999) # 10000

def monkey_count(n)
  # (1..n).to_a
  [*1..n]  #星號炸範圍成為array
end

p monkey_count(5)  # 印出 [1, 2, 3, 4, 5]
p monkey_count(3)  # 印出 [1, 2, 3]
p monkey_count(9)  # 印出 [1, 2, 3, 4, 5, 6, 7, 8, 9]
p monkey_count(10) # 印出 [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p monkey_count(20) # 印出 [1, 2, 3, 4, 5, 6,..略..18, 19, 20]


def count_sheep(num)
  (1..num).to_a.map {|x| "#{x} sheep..."}.join ''
end

puts count_sheep(1)  # 印出 1 sheep...
puts count_sheep(2)  # 印出 1 sheep...2 sheep...
puts count_sheep(3)  # 印出 1 sheep...2 sheep...3 sheep...