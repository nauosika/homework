def remove_char(s)
  s[1..-2]
end

p remove_char('eloquent')  # "loquen"
p remove_char('country')   # "ountr"
p remove_char('person')    # "erso"
p remove_char('place')     # "lac"
p remove_char('ok')        # ""

def positive_sum(arr)
  arr.select {|num| num > 0 }.sum
  # arr.select {|num| num.positive?}.sum
  # arr.select(&:positive?).sum   &:  =  |num| num
end

puts positive_sum([1,2,3,4,5])   # 15
puts positive_sum([1,-2,3,4,5])  # 13
puts positive_sum([-1,2,3,4,-5]) # 9


# 打字員在打字的時候，因為看不清楚原稿件，把 S 打成 5、把 I 打成 1、把 O 打成 0，請寫一段程式可以校正原來打錯的字：
def correct(string)
  # string.tr('510', 'SIO')
  string.gsub(/[510]/, "5"=> "S", "1"=> "I", "0"=> "O" )
end

puts correct("L0ND0N")     # LONDON
puts correct("DUBL1N")     # DUBLIN
puts correct("51NGAP0RE")  # SINGAPORE
puts correct("BUDAPE5T")   # BUDAPEST
puts correct("PAR15")      # PARIS