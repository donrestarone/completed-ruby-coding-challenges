sample_input = [4, 73, 67, 38, 33]
sample_output = []
fails = []
sample_input.each do |num|
	if num + 1 > 40 || num + 2 >= 40
		if (num + 1) % 5 == 0
			rounded = (num + 2) / 5.round * 5
			sample_output.push(rounded)
		elsif (num + 2) % 5 == 0
			rounded = (num + 2) / 5.round * 5
			sample_output.push(rounded)
		else 
			sample_output.push(num)
		end

	else 
		fails.push(num)
	end
end

p sample_output
p fails
