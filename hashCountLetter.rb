puts "Text please: "
text = gets.chomp

#puts text 

words = text.split(" ")
frequencies = Hash.new(0)
letterCount = Hash.new(0)

#puts words

words.each do |word| 
  frequencies[word] += 1 
    word.each_char do |letter|
    letterCount[letter] += 1
    end
  end
  
#puts letterCount

frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!
puts "---------------------------"
puts "Word Frequency of Text::"
puts "---------------------------"
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }
puts "---------------------------"
puts "Letter frequency of Text::"
puts "---------------------------"
letterCount = letterCount.sort_by {|a, b| b }
letterCount.reverse!
letterCount.each { |word, frequency| print word + frequency.to_s + ", " }

#puts letterCount
#puts frequencies