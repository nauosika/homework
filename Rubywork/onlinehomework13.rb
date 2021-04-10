def calc_sum(param)
  case param
  when Array
    param.sum
  when Integer
    param
  else
    0
  end
  # Array(param).sum
end

puts calc_sum([1, 2, 3, 4, 5])  # 印出 15
puts calc_sum(5)                # 印出 5
puts calc_sum(nil)              # 印出 0