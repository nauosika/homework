def maskify(card_number)
  if card_number.length <= 4
    card_number
  else
    "#{'#' * (card_number.length - 4)}#{card_number[-4, 4]}"
  end

end

RSpec.describe do
  it "幫信用卡號打馬賽克" do
    expect(maskify('4556364607935616')).to eq '############5616'
    expect(maskify('1')).to eq '1'
    expect(maskify('11111')).to eq '#1111'
  end
end






def is_sorted_and_how(arr)
  if arr == arr.sort
    'yes, ascending'
  elsif arr == arr.sort.reverse
    'yes, descending'
  else
    'no'
  end
end

RSpec.describe do
  it "檢查是否有照順序排？" do
    expect(is_sorted_and_how([1, 2])).to eq 'yes, ascending'
    expect(is_sorted_and_how([15, 7, 3, -8])).to eq 'yes, descending'
    expect(is_sorted_and_how([4, 2, 30])).to eq 'no'
  end
end



class Person
  def initialize(first_name, last_name)
    @first , @last = first_name, last_name
  end

  def greet
    "Hello, #{@first} #{@last}!"
  end
end

RSpec.describe do
  it "當個有禮貌的人" do
    person = Person.new('Bob', 'Smith')
    expect(person.greet).to eq 'Hello, Bob Smith!'
  end
end



class Block
  attr_reader :width, :length, :height
  
  def initialize(array)
    @width, @length, @height  = array
  end

  def volume
    @width * @length * @height
  end

  def surface_area
    (@width * @length + @length * @height + @height * @width) * 2
  end
end

RSpec.describe do
  it "實作內容" do
    cube = Block.new([2,2,2])

    expect(cube.width).to be 2
    expect(cube.length).to be 2
    expect(cube.height).to be 2
    expect(cube.volume).to be 8
    expect(cube.surface_area).to be 24
  end
end



class Human

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greet(your_name)
    "Hello #{your_name}, my name is #{@name}"
  end


end

RSpec.describe do
  it "打招呼！" do
    jack = Human.new("Jack")
    jill = Human.new("Jill")

    expect(jack.greet("Jill")).to eq "Hello Jill, my name is Jack"
    expect(jack.greet("Mary")).to eq "Hello Mary, my name is Jack"
    expect(jill.greet("Jack")).to eq "Hello Jack, my name is Jill"
    expect(jill.name).to eq 'Jill'
  end
end



def non_repeat_sum(arr)
  arr.select {|num| arr.count(num) == 1}.sum
end

RSpec.describe do
  it "計算不重複元素的總合" do
    expect(non_repeat_sum([4,5,7,5,4,8])).to be 15
    expect(non_repeat_sum([9, 10, 19, 13, 19, 13])).to be 19
    expect(non_repeat_sum([16, 0, 11, 4, 8, 16, 0, 11])).to be 12
    expect(non_repeat_sum([5, 17, 18, 11, 13, 18, 11, 13])).to be 22
    expect(non_repeat_sum([5, 10, 19, 13, 10, 13])).to be 24
  end
end