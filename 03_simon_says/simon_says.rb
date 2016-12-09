# echos the input string
def echo(str)
	str
end

# returns the input string in uppercase
def shout(str)
	str.upcase
end

# repeats str "num" of times
def repeat(str, num=2)
	output = ""
	num.times do |loopno|
		output += str
		if (loopno < num-1)
			output += " "
		end
	end
	output
end

# returns the first "num" characters of a string
def start_of_word(str, num)
	str[0,num]
end

# returns the first word of a string
def first_word(str)
	str.split[0]
end

# title-izes the string (first letter of each word uppercase)
# does not capitalize the first letter of "Little Words"
def titleize(str)
	little_words = ["the", "and", "over", "as", "is"]
	words = str.split
	words.each_index do |idx|
		if (idx == 0)
			words[0].capitalize!
		else
			if (not little_words.include?(words[idx].downcase))
				words[idx].capitalize!
			end
		end
	end
	words.join(" ")
end