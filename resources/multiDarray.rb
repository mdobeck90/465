#! /usr/bin/env ruby
puts "multi dimensional array"

guesses = ["a", "b", "c"]
mdArray =[Array.new, guesses, Array.new]
#mdArray[0][0] = 1
#puts mdArray[1][0]
mdArray[0].each do |i|
    i = "-"
    print i
end
mdArray.each do |r|
    #puts r.each{ |c| c}.join
    puts r.each{ |c| c}.join
end
