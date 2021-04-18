def rock_paper_scissor(p1, p2)
  win_table = {'rock' => 'scissors', 'scissors' => 'paper', 'paper' => 'rock'}

  if p1 == p2
    "Draw"
  else
    if win_table.has_key?(p1) && win_table[p1] == p2
      "Player 1 won"
    else
      "Player 2 won"
    end
  end
end

puts rock_paper_scissor('rock', 'scissors')      # 印出 Player 1 won!
puts rock_paper_scissor('paper', 'rock')         # 印出 Player 1 won!
puts rock_paper_scissor('paper', 'scissors')     # 印出 Player 2 won!
puts rock_paper_scissor('rock', 'paper')         # 印出 Player 2 won!
puts rock_paper_scissor('rock', 'rock')          # 印出 Draw!
puts rock_paper_scissor('scissors', 'scissors')  # 印出 Draw!



# last = 上次日期，today = 今天日期，cycle_length = 週期
require 'date'

def is_period_late?(last, today, cycle_length)
  Date.parse(today) - Date.parse(last) > cycle_length
end

puts is_period_late?('2016/6/13', '2016/7/16', 35) # false
puts is_period_late?('2016/6/13', '2016/7/16', 28) # true
puts is_period_late?('2016/6/13', '2016/7/16', 35) # false
puts is_period_late?('2016/6/13', '2016/6/29', 28) # false
puts is_period_late?('2016/7/12', '2016/8/9', 28)  # false
puts is_period_late?('2016/7/12', '2016/8/10', 28) # true
puts is_period_late?('2016/7/1', '2016/8/1', 30)   # true
puts is_period_late?('2016/6/1', '2016/6/30', 30)  # false
puts is_period_late?('2016/1/1', '2016/1/31', 30)  # false
puts is_period_late?('2016/1/1', '2016/2/1', 30)   # true