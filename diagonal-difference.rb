def diagonalDifference(a)
  first_row = []
  second_row = []
  third_row = []
  sub_array_size = a[0]
  a.delete_at(0)
  array = a

  array.each_with_index do |num, position|

    if position < sub_array_size
      first_row.push num
    elsif position < (sub_array_size * 2)
      second_row.push num
    elsif position < (sub_array_size * 3)
      third_row.push num
    end

  end
  slice = first_row[0] + second_row[1] + third_row[2]
  slice1 = first_row[2] + second_row[1] + third_row[0]
  diff = slice - slice1
  # p first_row
  # p second_row
  # p third_row
  return diff.abs
end

array = [3, 11, 2, 4, 4, 5, 6, 10, 8, -12]
array1 = [3, 12, 3, 5, 5, 6, 7, 11, 9, -13]
array2 = [4, 12, 3, 5, 5, 6, 7, 11, 9, -13, 3, 2, 9]

p diagonalDifference(array)
