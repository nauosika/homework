def sort_array(list)
  oddsort = list.select{ |x| x.odd?}.sort
  # list.map {|num| num.even? ? num : oddsort.shift }
  list.map do |num|
    if num.even?
      num
    else 
      oddsort.shift
    end
  end
end

p sort_array([7, 1])                          # 印出 [1, 7]
p sort_array([5, 8, 6, 3, 4])                 # 印出 [3, 8, 6, 5, 4]
p sort_array([9, 8, 7, 6, 5, 4, 3, 2, 1, 0])  # 印出 [1, 8, 3, 6, 5, 4, 7, 2, 9, 0]
