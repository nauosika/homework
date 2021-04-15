def abbrev_name(name)
  # name.split(' ').map {|str| str[0]}.join('.')
  # name.split.map { |str| str[0] }.join('.')
  name.split.map { |str|str[0].capitalize}.join('.') #確保大寫
end

puts abbrev_name("Sam Harris")      # S.H
puts abbrev_name("Patrick Feenan")  # P.F
puts abbrev_name("Evan Cole")       # E.C
puts abbrev_name("P Favuzzi")       # P.F
puts abbrev_name("David Mendieta")  # D.M

def square_or_square_root(array)
  # array.map {|int|
  # if (int ** 0.5) % 1 == 0
  #   (int ** 0.5).to_i
  # else
  #   int ** 2
  # end
  # }
  array.map { |int|
  if Math.sqrt(int) % 1 == 0
    # Math.sqrt(int).to_i
    Integer.sqrt(int)
  else
    int ** 2
  end
  }

end

p square_or_square_root([4, 3, 9, 7, 2, 1])      # [2, 9, 3, 49, 4, 1]
p square_or_square_root([100, 101, 5, 5, 1, 1])  # [10, 10201, 25, 25, 1, 1]
p square_or_square_root([1, 2, 3, 4, 5, 6])      # [1, 4, 9, 2, 25, 36]


def check_exam(correct, answer)
  score = correct.zip(answer).map { |crr, ans| 
    case ans
    when crr
      4
    when ""
      0
    else
      -1
    end
  }.sum 
  score > 0 ? score : 0
end

puts check_exam(["a", "a", "b", "b"], ["a", "c", "b", "d"])  # 6
puts check_exam(["a", "a", "c", "b"], ["a", "a", "b",  ""])  # 7
puts check_exam(["a", "a", "b", "c"], ["a", "a", "b", "c"])  # 16
puts check_exam(["b", "c", "b", "a"], ["",  "a", "a", "c"])  # 0