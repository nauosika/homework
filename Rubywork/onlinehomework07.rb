def generate_odd_numbers(n)
  (0..n).select { |x| x.odd? }
  # newarr = []
  # (0..n).each {|x| newarr << x if x.odd?}
  # newarr
end

p generate_odd_numbers(7)  # 印出 [1, 3, 5, 7]
p generate_odd_numbers(15) # 印出 [1, 3, 5, 7, 9, 11, 13, 15]
p generate_odd_numbers(8)  # 印出 [1, 3, 5, 7]
p generate_odd_numbers(6)  # 印出 [1, 3, 5]
p generate_odd_numbers(3)  # 印出 [1, 3]