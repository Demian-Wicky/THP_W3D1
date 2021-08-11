def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, n=2)
  ((str + " ") * n).strip
end

def start_of_word(str, n)
  str[0..n-1]
end

def first_word(str)
  str.split[0]
end

def titleize(str)
  arr = str.split
  words_no_cap = ["and", "or", "the", "to", "the", "a"]
  output = []
  arr.each_with_index do |word, index|
    if index == 0
      output << word[0].upcase + word[1..-1]
    else
      if words_no_cap.include?(word) == false
        output << word[0].upcase + word[1..-1]
      else
        output << word
      end
    end
  end
  return output.join(' ')
end