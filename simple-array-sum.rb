def simpleArraySum(ar)
    counter = 0
    ar.each do |num|
        counter += num
    end
    return counter
end

array = [1, 2, 3]

p simpleArraySum(array)
