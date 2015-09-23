#!/usr/bin/env ruby
#Max Dobeck
#{Will find out if the files within a given cur_directory are directories or not. Returns true or false}

def arg_check
    if ARGV[0] == nil
        puts "You need to enter a word or phrase to search for."
        exit
    end
end

arg_check
term = ARGV[0].downcase
puts "Files with content that matches <#{term}>"
puts "**************************************************"
#puts Dir.entries(Dir.getwd)
Dir.foreach(Dir.getwd) do |i| 
    isdir = Dir.exist?(i)
    puts "#{i} #{isdir}"
end
puts "**************************************************"
