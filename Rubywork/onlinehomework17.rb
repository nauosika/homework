class String
  def is_uppercase?
    # if self == self.upcase 
    #   true
    # else
    #   false
    # end
    self == self.upcase  # == 是判斷句 會自動回傳布林值
  end
end



puts "c".is_uppercase?                       # false
puts "C".is_uppercase?                       # true
puts "hello I AM DONALD".is_uppercase?       # false
puts "HELLO I AM DONALD".is_uppercase?       # true
puts "ACSKLDFJSgSKLDFJSKLDFJ".is_uppercase?  # false
puts "ACSKLDFJSGSKLDFJSKLDFJ".is_uppercase?  # true