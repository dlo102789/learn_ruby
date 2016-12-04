#write your code here
def echo (phrase)
	phrase
end

def shout(phrase)
	phrase.upcase
end

def repeat(word, k=2)
	phrase = word
	k -= 1
	k.times do
		phrase += ' ' + word
	end
	phrase
end

def start_of_word (word,num)
	array = word.split("")
	array = array.shift(num)
	word = array.join
end

def first_word (phrase)
	array = phrase.split(" ")
	array[0]
end

def titleize (p)
	array = p.split()
	array.each do |item|
		if (item != 'the' and item != 'and' and item != 'over')
			item.capitalize!
		end
	end
	array[0].capitalize!
	if array.length == 1
		return array[0]
	end
	array.join(" ")
end
