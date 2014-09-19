def translate string 
	string.split.map { |word| translate_words(word) }.join(" ")
end

def translate_words word
	vowel = ["a", "e", "i", "o", "u"] 
	if vowel.include? word[0] 
		word + "ay"
	elsif vowel.include? word[1] and word[0] != "q"
		word[1..-1] + word[0] + "ay"
	elsif vowel.include? word[2] or word[0] == "q" and word[1] != "q"
		word[2..-1] + word[0..1] + "ay"
	else
		word[3..-1] + word[0..2] + "ay"
	end
end
