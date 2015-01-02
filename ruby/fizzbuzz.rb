def fizzbuzz(n)
	if n % 3 == 0 && n % 5 == 0
		puts "FizzBuzz"
	elsif n % 3 == 0
		puts "Fizz"
	elsif n % 5 == 0
		puts "Buzz"
	else
		puts n
	end 		
end

puts "How many students are in the class?"
number = gets.chomp.to_i

(1..number).each {|i|
	fizzbuzz(i)
}

