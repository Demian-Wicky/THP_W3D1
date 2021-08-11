def add(n1, n2)
  n1 + n2
end

def subtract(n1,n2)
  n1 - n2
end

def sum(array)
  array.inject(0){|sum,x| sum + x }
end

def multiply(n1, n2)
  n1 * n2
end

def power(base, expo)
  base ** expo
end

def factorial (n) #https://stackoverflow.com/questions/2434503/ruby-factorial-function
  (2..n).reduce(1,:*)
end
