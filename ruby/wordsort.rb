def wordsort( str )
	str_no_puntuation = str.gsub(/[,.¡!?¿]/,'')

	array = str_no_puntuation.split.sort_by{ |word| word.downcase }
	print str , " =>\t"
	
	array.each do |i|
	   if i == array.last
	        print i, "\n"
	   else
	        print i, ", "
	   end
	end
	
end

wordsort("This is, a. test!")
wordsort("Another test? Yes, this is the second test!")
