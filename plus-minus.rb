def plusMinus(arr)
sample_size = arr.size
positive_occurance = 0
negative_occurance = 0
neutral_occurance = 0
  arr.each do |num|
    if num > 0
      positive_occurance += 1
    elsif num == 0
      neutral_occurance += 1
    elsif num < 0
      negative_occurance += 1
    else
      'error'
    end
  end
  puts positive_occurance.to_f / sample_size
  puts negative_occurance.to_f / sample_size
  puts neutral_occurance.to_f / sample_size
end

num_array = [-4, 3, -9, 0, 4, 1]

plusMinus(num_array)
