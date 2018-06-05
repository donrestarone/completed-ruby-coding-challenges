input = "07:05:45PM"
# extract PM from regexp
find_am_or_pm = input.scan(/[A-Z]+/)

# split from :
input_array = input.split(":")

# remove the string

split_str = input_array[2]

input_array.pop

split_str = split_str.split("PM")



str_array = (input_array << split_str).flatten!

int_array = str_array.map { |s| s.to_i}

p int_array


if find_am_or_pm[0] == "PM"
	indicator = true
	am_or_pm = "PM"
elsif find_am_or_pm[0] == "AM"
	indicator = false
	am_or_pm = "AM"
else 
	indicator = nil
end

if indicator == true
	hour = int_array[0] + 12
	minutes = int_array[1]
	seconds = int_array[2]
elsif indicator == false
	hour = int_array[0]
	minutes = int_array[1]
	seconds = int_array[2]
end

p "#{sprintf '%02d', hour}:#{sprintf '%02d', minutes}:#{sprintf '%02d', seconds}#{am_or_pm}"
