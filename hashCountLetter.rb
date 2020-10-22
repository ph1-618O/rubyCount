puts "Text please: "
text = gets.chomp

#puts text 
#splitting the text by spaces
words = text.split(" ")
#creating hashes
frequencies = Hash.new(0)
letterCount = Hash.new(0)

#puts words

#populating hashes with data from input
words.each do |word| 
  frequencies[word] += 1 
    word.each_char do |letter|
    letterCount[letter] += 1
    end
  end
  
#puts letterCount
#sorting hashes by amount dec order
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!
letterCount = letterCount.sort_by {|a, b| b }
letterCount.reverse!

#printing output key/values for counted words
puts "---------------------------"
puts "Word Frequency of Text::"
puts "---------------------------"
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }

#printing output key/values for counted chrs
puts "---------------------------"
puts "Letter frequency of Text::"
puts "---------------------------"
letterCount.each { |word, frequency| print word + frequency.to_s + ", " }

#puts letterCount
#puts frequencies