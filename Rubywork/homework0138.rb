
  

def number_root(n) 
  while n > 10
    n = n.digits.sum
  end
  return n
end

puts number_root(16)      
puts number_root(942)     
puts number_root(132189)  
puts number_root(493193)