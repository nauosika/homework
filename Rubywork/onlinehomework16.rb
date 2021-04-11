def count_by(x, n)
  (1..n).map {|num| num * x}
end

p count_by(1, 5)    # [1, 2, 3, 4, 5]
p count_by(2, 5)    # [2, 4, 6, 8, 10]
p count_by(3, 5)    # [3, 6, 9, 12, 15]
p count_by(50, 5)   # [50, 100, 150, 200, 250]
p count_by(100, 5)  # [100, 200, 300, 400, 500]

def alphabet_position(text)
  new1 = text.downcase
  new2 = new1.gsub(/\W/,'')
  new3 = new2.bytes.map {|num| num - 96}  #b-cus "a".ord = 96
  new3.join ' '
  # text.downcase.gsub(/\W/,'').bytes.map {|num| num - 96}.join ' '
end

p alphabet_position("The sunset sets at twelve o' clock.")
# 印出 "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" 字串

p alphabet_position("-.-'")
# 印出 "" 空字串