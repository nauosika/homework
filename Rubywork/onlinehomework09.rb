def generate_order_code(str)
  # "TN-#{'0' * (7 - str.to_s.size)}#{str}" #自己都覺得很歪的解法
  "TN-#{'%07d' % str }"
end

puts generate_order_code(29)    # 印出 TN-0000029
puts generate_order_code(328)   # 印出 TN-0000328
puts generate_order_code(1224)  # 印出 TN-0001224