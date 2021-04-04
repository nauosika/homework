def calc_area(radius)
  if radius > 0
    (3.141592 * radius * radius).round(2)
    # (Math::PI * radius * radius).round(2)
  else
    "Radius must greater than zero!"
  end
end

puts calc_area(8)   # 印出 201.06
puts calc_area(10)  # 印出 314.16
puts calc_area(15)  # 印出 706.86
puts calc_area(-1)  # 印出 Radius must greater than zero!