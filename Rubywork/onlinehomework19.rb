def century(year)
  # "#{(year.to_f / 100).ceil} 世紀" 
  "#{(year / 100.0).ceil} 世紀"
end

puts century(1705)  # 18 世紀
puts century(1900)  # 19 世紀
puts century(1601)  # 17 世紀
puts century(2000)  # 20 世紀

def solution(sentence)
  sentence.split.reverse.join' ' #''中有空格喔
end

puts solution("The greatest victory is that which requires no battle") 
# 印出 battle no requires which that is victory greatest The

def squareSum(numbers)
  Array(numbers).s {|n| n ** 2}.sum
end

puts squareSum(2)          # 印出 4
puts squareSum([1, 2, 2])  # 印出 9