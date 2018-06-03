input = "1 2 3 4 5"
stripped = input.gsub(/\s+/, "")

input = stripped.split('').map {|s| s.to_i}
input.sort! {|a,b| a <=> b}
pop_count = input.length - 1
min_counter = 0
max_counter = 0

find_min = input.clone
find_min.shift

find_min.each_with_index do |int, index|
	max_counter += int
end



find_max = input.clone
find_max.pop

find_max.each_with_index do |int, index|
	min_counter += int
end



puts "#{min_counter} #{max_counter}"

return min_counter max_counter



# alternate solution 


