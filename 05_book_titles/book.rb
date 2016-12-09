class Book
	def title
		@title
	end

	def title=(str)
		little_words = ["a", "an", "and", "the"]
		prepositions = ["in", "of"]
		out = []
		words = str.split
		words.each_index do |i|
			if (i == 0)
				out.push(words[i].capitalize)
			else
				if (little_words.include?(words[i].downcase) or prepositions.include?(words[i].downcase))
					out.push(words[i])
				else
					out.push(words[i].capitalize)
				end
			end
		end
		@title = out.join(" ")
	end
end
