def add(x,y)
	x + y
end

def subtract(x,y)
	x - y
end

def sum(a)
	t = 0
	a.each {|i| t += i}
	t
end

def multiply(*nums)
	nums.reduce(:*)
end

def power(num, factor)
	num ** factor
end

def factorial(num)
	num = 1 if num == 0
	(1..num).to_a.inject(:*)
end