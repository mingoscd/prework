def cesar_cipher(str, n)
	if n.to_i == 0
		return puts "Incorrect cipher number"
	end
	print str, "  =>  "
	str.downcase.gsub(/./){ |i|
		if i.ord < 64  #simbols not converted
			cipher_letter = i.ord.to_i
		else
			cipher_letter = i.ord-n.to_i

			if cipher_letter < 97 #go back to the end of alphabet
				cipher_letter = cipher_letter + 26
			elsif cipher_letter > 122 #go back to the begin of alphabet
				cipher_letter = cipher_letter - 26
			end

		end
		print cipher_letter.chr
	}
	print "\n"
end

cesar_cipher("the password is secret", -4)
cesar_cipher("the password is secret", -3)
cesar_cipher("the password is secret", -2)
cesar_cipher("the password is secret", -1)
cesar_cipher("the password is secret", 1)
cesar_cipher("the password is secret", 2)
cesar_cipher("the password is secret", 3)