string = 'foo bar baz'

string_arr = string.split

reversed_array = Array.new

string_arr.each_with_index do |word, index|
	length = string_arr[index].length 
	reversed = word.reverse
	reversed_array.push(reversed)
end

reversed = reversed_array.map {|s|"#{s}"}.join(' ')

p reversed
##what to do
#take each word
#turn them into array
#make the last element first
