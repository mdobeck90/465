#! /usr/bin/env ruby
#verify that initial word size is a digit
def check_input(input)
    if /\D/.match(input)
        false
    else
        true 
    end
end

def get_user_input
    puts "Select a word size between 5 - 20 letters:"
    gets.chomp
end

def setup_word(word_array)
    
end

def print_word(word_array)
    word_array.each do |i|
        print i
    end
    puts
end

def update_guesses(past_guesses)
    puts "Prev. Guesses"
    past_guesses.each do |i|
        print i
        print " "
    end
    puts
end

def valid_guess(guess, letters_guessed, chances, guess_word)
    if /[a-z]{2,}|\d|[A-Z]{2,}/.match(guess)
        puts "Enter only single character letters"
        update_guesses(letters_guessed)
        puts chances
        print_word(guess_word)
        false
    else
        true 
    end
end

def fill(array, word_size)
    IO.foreach("words") do |word|
        if word.length == word_size    
            array.push(word)
        end
    end 
end

def can_i_cheat(words, guess)
    words.each do |word|
        if /[#{guess}?]/i.match(word) != true
            true
        else
            false
        end
    end
end

letters_guessed = Array.new
chances = 10
game_over = false
#get a digit 5...20 from user for word size
user_input = get_user_input
get_input = false
#loop until user enters correctly sized digit
while get_input == false do
    if check_input(user_input)
        word_size = user_input.to_i 
        get_input = true
    else
        user_input = get_user_input
    end
end

#if user goes outside 5...20 dimensions, just give the closer number
if word_size < 5
    word_size = 5
end
if word_size > 20
    word_size = 20
end
guess_word = Array.new(word_size, "_ ")
print_word(guess_word)
dictionary = Array.new()
fill(dictionary, word_size)
#Begin capturing standard Letter guesses from user
#master loop ends when either one of two things occurs:
#1. User guesses correct word
#2. chances == 0
while game_over == false
    get_input = false
    print "Enter your guess: "
    guess = gets.chomp
 while get_input == false do
        if valid_guess(guess, letters_guessed, chances, guess_word)
            get_input = true
        else
            print "Enter your guess: "
            guess = gets.chomp
        end
    end   
    letters_guessed.push(guess)
    update_guesses(letters_guessed)

    can_i_cheat(dictionary, guess) ?  "Yes, I can still cheat" : "No, I cannot cheat"
    #guess was wrong
    print_word(guess_word)
    puts chances
    puts

    #guess was right
end
