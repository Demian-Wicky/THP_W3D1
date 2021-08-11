def who_is_bigger(a, b, c)
  if a == nil || b == nil  || c == nil 
    "nil detected"
  elsif a > b && a > c
    "a is bigger"
  elsif b > a && b > c
    "b is bigger"
  else
    "c is bigger"
  end
end

def reverse_upcase_noLTA(string)
  string.reverse.upcase.gsub(/[ltaLTA]/, '')  
end

def array_42(array)
  if array.include?(42)
    true
  else
    false
  end
end

def magic_array(a)
  a.flatten.sort.map{|n|n*2}.uniq.delete_if{|n|n%3==0} #52 chars 😎
end
