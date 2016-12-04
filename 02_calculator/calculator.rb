#write your code here
def add (first, second)
	first + second
end

def subtract (first, second)
	first - second
end

def sum (ar)
	fnum = 0
	ar.each do |num|
		fnum += num
	end
	fnum
end

def multiply (first, *rest)
	while rest.length > 0
		first *= rest.pop
	end
	first
end

def power (first, second)
	temp = 1
	second.times do
		temp *= first
	end
	temp
end

def factorial(number)
	if number <= 1
		return 1
	end

	number * factorial(number-1)
end