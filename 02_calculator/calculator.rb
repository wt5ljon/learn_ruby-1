def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(arr)
	answer = 0
	arr.each do |num|
		answer += num
	end
	answer
end

def multiply(*args)
	answer = 1
	args.each do |arg|
		answer *= arg
	end
	answer
end

def power(base, n)
	answer = 1
	n.times do
		answer *= base
	end
	answer
end

def factorial(n)
	answer = 1
	if(n == 0)
		answer
	else
		n.times do |i|
			answer *= i+1
		end
	end
	answer
end