def give_me_five
  # ["cry", "cry", "cry", "cry", "cry"].count
  "kissy".length
end  

puts give_me_five  # 5

class Array
  def second
    self[1]
  end
end
p [1,2,3].second  # 2
p [].second       # nil
p [1].second      # nil

def compute
  # 實作內容
end

def compute
  if block_given?
    yield
  else
    "Do not compute"
  end
end

puts compute { "Block" }  # 印出 Block
puts compute              # 印出 Do not compute

class Ghost
  def color
    ["yellow", "purple", "red", "white"].sample
  end
end

ghost = Ghost.new
puts ghost.color          # 隨機印出 white, yellow, purple, red 這四種顏色的字串