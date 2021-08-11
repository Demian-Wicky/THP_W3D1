def translate(str)
  words = str.gsub('qu', '𓍢').gsub('Qu', '𓍣').split
  vowels = ['a','e','i','o','u']
  output1array = []
  output2array = []

  words.each do |word|
    if vowels.include?(word[0].downcase)
      output1array << (word+'ay')
    elsif vowels.include?(word[0].downcase) == false
      parts = word.split(/([aeiou].*)/)
      output1array << parts[1] + parts[0] + 'ay'
    else
      output1array << word
    end
  end
  output1 = output1array.join(' ').gsub('𓍢', 'qu').gsub('𓍣', 'Qu')
  
  ####################################
  
  output1.split.each do |word|
    if word.count("A-Z") > 0
      result = word.upcase[0]+word.downcase[1..-1]
      output2array << result
    else
      result = word.downcase
      output2array << result
    end
  end
  output2array.join(' ')
end