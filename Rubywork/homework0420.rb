def rounding(num)
  (num.to_f / 10).round * 10
end


puts rounding(22) #-> 20
puts rounding(25) #-> 30
puts rounding(37) #-> 40