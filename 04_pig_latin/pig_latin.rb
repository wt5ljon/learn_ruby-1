def translate(str)
	vowels = ['a', 'e', 'i', 'o', 'u']
	words = str.split()
	words.each_index do |idx|
		first_vowel = words[idx].index(/[aeiou]/)
		if first_vowel == 0
			words[idx] += "ay"
		elsif first_vowel == 1
			if (words[idx][0..1].downcase == "qu")
				words[idx] = words[idx][2..-1] + words[idx][0..1] + "ay"
			else
				words[idx] = words[idx][1..-1] + words[idx][0] + "ay"
			end
		elsif first_vowel == 2
			if (words[idx][1..2].downcase == "qu")
				words[idx] = words[idx][3..-1] + words[idx][0..2] + "ay"
			else
				words[idx] = words[idx][2..-1] + words[idx][0..1] + "ay"
			end
		elsif first_vowel == 3
			words[idx] = words[idx][3..-1] + words[idx][0..2] + "ay"
		end
	end
	words.join(" ")
end
