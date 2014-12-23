def fizzbuzz(n)
	if n%3==0 && n%5==0
		return "FizzBuzz"
	elsif n%3==0
		return "Fizz"
	elsif n%5==0
		return "Buzz"
	else
		return n
	end 		
end

puts "How many students are in the class?"
number = gets.chomp.to_i
array = [*1..number]

for i in array
	response = fizzbuzz(i)
	puts "#{response}"
end

#wait to see the result
gets.chomp

