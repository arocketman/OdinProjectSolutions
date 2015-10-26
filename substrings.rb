def substrings(word,dictionary)
	matches = Hash.new(0)
	word.split.each do |x|
		for w in (0...dictionary.size)
				matches[dictionary[w]] += 1 if x == dictionary[w]
		end
	end
	return matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("going to sit below the desk , below it below sit", dictionary)