#! /usr/bin/env ruby

number_array = [[1,2,3],[4,5,6],[7,8,9],[10,11,12]]
string_array = [["Fred","Susan"],["Timothy", "Jack"]]

#puts the number 5
puts number_array[1][1]

#puts the First initial of each name
string_array.each { |x| x.each {|y| puts y[0]} } 

#puts each name in the string_array
string_array.each { |x| x.each {|y| puts y} } 

guesses = ["a","e","i","o","u"]
table = [Array.new(5,"-"), Array.new, Array.new(5,"-")]
table[1] = guesses

table.each { |x| puts x.each {|y| y}.join }

#prints table without newline char
#print table
