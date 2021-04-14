def count_sheeps(array)
  array.count(true)
end

array1 = [true,  true,  true,  false,
          true,  true,  true,  true ,
          true,  false, true,  false,
          true,  false, false, true ,
          true,  true,  true,  true ,
          false, false, true,  true ]
              
puts count_sheeps(array1)  # 17

def sum_array(arr)
  newarr = Array(arr)
  newarr.count > 4 ? newarr.sort[1..-2].sum : 0
  # if newarr.count > 2
  #   newarr.sort[1..-2].sum
  # else
  #   0
  # end
end

puts sum_array(nil)                      # 0
puts sum_array([])                       # 0
puts sum_array([3])                      # 0
puts sum_array([-3])                     # 0
puts sum_array([ 3, 5])                  # 0
puts sum_array([-3, -5])                 # 0
puts sum_array([6, 2, 1, 8, 10])         # 16
puts sum_array([6, 0, 1, 10, 10])        # 17
puts sum_array([-6, -20, -1, -10, -12])  # -28
puts sum_array([-6, 20, -1, 10, -12])    # 3

def merge_arrays(a, b)
  # (a + b).uniq.sort
  (a|b).sort
end

p merge_arrays([1, 3, 5], [2, 4, 6])  # [1, 2, 3, 4, 5, 6]
p merge_arrays([2, 4, 8], [2, 4, 6])  # [2, 4, 6, 8]