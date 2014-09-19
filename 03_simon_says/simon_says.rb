def echo x
	x
end

def shout string
	string.upcase
end

def repeat word, times=2
	Array.new(times, word).join(" ")
end

def start_of_word word, up_to_letter
	word[0..up_to_letter - 1]
end

def first_word string
	string.split(" ")[0]
end

def titleize title
	short = ["and", "the", "over"]
	words = title.capitalize!.split
	words.each do |word|
		unless short.include? word
			word.capitalize!
		end
	end
	words.join(" ")
end