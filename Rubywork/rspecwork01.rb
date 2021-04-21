def find_shortest(str)
  str.split.sort_by {|s| s.length}.first.size
end

RSpec.describe do
  it "找出最短的字" do
    expect(find_shortest("bitcoin take over the world maybe who knows perhaps")).to be 3
    expect(find_shortest("turns out random test cases are easier than writing out basic ones")).to be 3
    expect(find_shortest("lets talk about javascript the best language")).to be 3
    expect(find_shortest("i want to travel the world writing code one day")).to be 1
    expect(find_shortest("Lets all go on holiday somewhere very cold")).to be 2
  end
end

def my_languages(scores)
  scores.select {|key, value| value >= 60 }.keys
end

RSpec.describe do
  it "選出及格(60 分以上)的科目" do
    expect(my_languages({"Java" => 10, "Ruby" => 80, "Python" => 65})).to eq ["Ruby", "Python"]
    expect(my_languages({"Hindi" => 60, "Dutch" => 93, "Greek" => 71})).to eq ["Hindi", "Dutch", "Greek"]
    expect(my_languages({"C++" => 50, "ASM" => 10, "Haskell" => 20})).to eq []
  end
end

def find_missing_numbers(array)
  
    # aarray - barray = 缺少值 前方與後方比
  if array.length < 2
    []
  else
    (array.first..array.last).to_a - array  
    #[*array.min..array.max] - array
  end
end

RSpec.describe do
  it "找出缺少的數字" do
    expect(find_missing_numbers([-3,-2,1,4])).to eq [-1,0,2,3]
    expect(find_missing_numbers([-1,0,1,2,3,4])).to eq []
    expect(find_missing_numbers([])).to eq []
    expect(find_missing_numbers([0])).to eq []
    expect(find_missing_numbers([-4,4])).to eq [-3,-2,-1,0,1,2,3]
  end
end