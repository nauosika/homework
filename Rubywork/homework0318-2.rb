def remove_extra_number(list, n)
  list = list.sort
  if n == 0
    return list.uniq
  else n > 0 
    Array.new << list.uniq.each
  end
end



p remove_extra_number([1, 1, 1, 1], 1)           # 印出 [1]
p remove_extra_number([1, 1, 1, 1], 2)           # 印出 [1, 1]
p remove_extra_number([20, 37, 20, 21], 1)       # 印出 [20, 37, 21]
p remove_extra_number([1, 2, 3, 1, 2, 2, 2], 2)  # 印出 [1, 2, 3, 1, 2]
p remove_extra_number([1, 2, 3, 4], 0)           # 印出 [1, 2, 3, 4]