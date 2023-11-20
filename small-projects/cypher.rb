puts "Welcome to my Caesar Cypher. Please input a word to cypher:"
user_word = gets
puts "You entered " + user_word
puts "Please enter the number of times you want the letter shifted in the cypher:"
cypher_num = gets
puts "You entered " + cypher_num

ascii = user_word.chars.map { |c| c.ord
}

shifted_word = ascii.map { |c| c+cypher_num.to_i }

user_word_return = shifted_word.map { |c| c.chr }.join

puts "Your new word is " + user_word_return

