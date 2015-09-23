#!/usr/bin/env ruby
#Max Dobeck

def arg_check
    if ARGV[0] == nil
        puts "You need to enter a word or phrase to search for."
        exit
    end
end

def dir_hunter(target_dir)
    Dir.foreach(target_dir) do |i| 
        isdir = Dir.exist?(i)
        puts i
        if isdir == true
            puts next_dir = target_dir + "/" + i
            #dir_hunter(next_dir) 
        end
    end
end

arg_check
term = ARGV[0].downcase
puts "Files with content that matches <#{term}>"
puts "**************************************************"
#puts Dir.entries(Dir.getwd)
dir_hunter(Dir.getwd)
puts "**************************************************"
