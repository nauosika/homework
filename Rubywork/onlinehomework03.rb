def bmi_calculator(height, weight)
  h = height / 100.to_f
  w  = weight
  bmi = w / (h*h)
  bmi.round(1)
end

puts bmi_calculator(170, 50) # 印出 17.3 (小數點以下一位，四捨五入)
puts bmi_calculator(180, 65) # 印出 20.1 (小數點以下一位，四捨五入)
