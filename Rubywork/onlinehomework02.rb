
def is_leap_year?(y)
  if y % 4 == 0 && y % 100 !=0 || y % 400 == 0
    true
  else
    false
  end
end

puts is_leap_year?(1998)  # 印出 false
puts is_leap_year?(2000)  # 印出 true
puts is_leap_year?(2100)  # 印出 false