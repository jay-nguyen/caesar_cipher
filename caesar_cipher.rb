def caesar_cipher(str, shift_num)
	letters = str.split("")
	downcase = ("a".."z").to_a
	upcase = ("A".."Z").to_a

	if shift_num > 26
		shift_num %= 26
	end

	letters.map! do |letter|
		if downcase.include?(letter)
			new_index = downcase.index(letter) + shift_num
			if new_index > 25
				new_index = (26 - new_index).abs
			end

			letter = downcase[new_index]

		elsif upcase.include?(letter)
			new_index = upcase.index(letter) + shift_num
			if new_index > 25
				new_index = (26 - new_index).abs
			end

			letter = upcase[new_index]
		else
			letter
		end
	end
	letters.join("")
end

puts caesar_cipher("abcdefg", -4)