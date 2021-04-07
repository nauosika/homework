require 'date'

def calc_age(birthday)
  ((Date.today - Date.parse(birthday)).to_i / 365.0).ceil
end

puts calc_age('1985/1/2')  # 印出 年齡
puts calc_age('1997/8/28') # 印出 年齡