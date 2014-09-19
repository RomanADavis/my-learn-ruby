class Book
	attr_reader :title
	
	def title=(new_title)
		shorties = ["and", "or", "but","in", "by", "over", "of", "at", "on", "the", "a", "an"]
		words = new_title.capitalize.split(" ")
		words.each {|word| word.capitalize! unless shorties.include? word}
		@title = words.join(" ")
	end
	
end