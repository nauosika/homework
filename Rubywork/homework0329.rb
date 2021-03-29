def padding_zero(n, m = 6)
#   newarr = n.digits
#   arr_size = m - newarr.size
#   if arr_size > 0
#     arr_size.times { newarr << 0 }
#     newarr.reverse.join
#   else
#     n
#   end
 "#{'0' * m }#{n}"[-m , m]
end

puts padding_zero(2)     # 印出 000002
puts padding_zero(12)    # 印出 000012
puts padding_zero(12, 8) # 印出 00000012