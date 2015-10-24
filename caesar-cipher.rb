def cesar_cipher(to_convert, shift_factor)
	#57 = 'z'.ord - 'A'.ord , needed if the shift factor is excessive.
	shift_factor = shift_factor % 57 
	array_to_convert = to_convert.split("")
	converted_array = Array.new
	for c in array_to_convert
		new_val = c.ord+shift_factor
		#correct it if exceeds value of z.chr
		new_val = (new_val % 122) + 65 if new_val > 122
		#correct if it's in between non-letters betwen 91 and 96
		new_val = new_val + 6 if new_val.between?(91,96)
		converted_array.push(new_val.chr)
	end
	return converted_array.join("")
end

puts cesar_cipher("ghsgdqd",1)