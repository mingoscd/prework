def wordsort( str )
	str_no_puntuation = str.gsub(/[,.¡!?¿]/,'')

	array = str_no_puntuation.split.sort_by{ |word| word.downcase }
	print str , " =>\t"
	
	puts array.join(", ")
	
end

wordsort("This is, a. test!")
wordsort("Another test? Yes, this is the second test!")
