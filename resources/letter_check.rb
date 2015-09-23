#! /usr/bin/env ruby

def can_i_cheat(words, letter)
   cheating_flag = false
   words.each do |word|
        if /#{letter}/.match(word) == nil 
            cheating_flag = true
        end
   end
   return cheating_flag
end
words = ["alpha", "bravo", "charlie", "charliehorse"]

puts words
letter = gets.chomp

#words.map! { |word| /#{letter}/.match(word)}
if can_i_cheat(words,letter) == true
    words.map do |word|
        if /#{letter}/.match(word)
            words[words.index(word)] = nil
        end
    end
else
    puts "I can't cheat!"
end
    words.compact!
puts words
