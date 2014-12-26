def wordsort( str )
	str_no_puntuation = str.gsub(/[,.¡!?¿]/,'')
	array = str_no_puntuation.split.sort_by{ |word| word.downcase }
	print str , " =>\t"
	(0..array.length-2).each { |i|
		print array[i], ", "
	}
	print "#{array[array.length-1]} \n"
end

wordsort("This is, a. test!")
wordsort("Another test? Yes, this is the second test!")
gets.chomp
