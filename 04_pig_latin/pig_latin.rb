#write your code here
def translate s 
	final = ""

	#split up parameter into individual words
	sentence = s.split(" ")

	#use a loop to split each word and translate them
	sentence.map! {|item|
		word = item.split("")
		if (word[0] == 'a' || word[0] == 'e' || word[0] == 'i' || word[0] == 'o' || word[0] == 'u')
			item = item + 'ay'
		elsif word[0] == 'q'
			temp = item.slice!(0..1)
			item += temp + 'ay'
		else
			c = 0
			contains_q = false
			while (word[c] != 'a' && word[c] != 'e' && word[c] != 'i' && word[c] != 'o' && word[c] != 'u')
				if (word[c] == 'q')
					contains_q = true
				end
				c += 1
			end
			if !contains_q
				temp = item.slice!(0..(c-1))
				item += temp + 'ay'
			else
				temp = item.slice!(0..c)
				item += temp + 'ay'
			end
		end
	}
	sentence.join(" ")
end