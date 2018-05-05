def aVeryBigSum(n, ar)
  counter = 0
  ar.each do |number|
    counter += number
  end
  return counter
end
big_num_array = [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]

p aVeryBigSum(5, big_num_array)
