#!/usr/bin/env ruby
#Max Dobeck

def arg_check
    if ARGV[0] == nil
        puts "You need to enter a word or phrase to search for."
        exit
    end
end

def type_check(file_to_check)
    if /(.rb|.erb|.js|.css|.html|.yml|.txt)$/.match(file_to_check) 
        true
    else
        false
    end
end

def create_file_pool(file)
    file_pool = Array.new
    Dir.glob("**/*") do |file|
        if type_check(file)
            file_pool.push(File.path(file_to_check) 
        end
    end
    return file_pool
end

def file_check(file_to_check, term)
    if /#{term}/.match(file_to_check)
        file_path = File.path(file_to_check)
        puts "./" + file_path
    end
end

def line_check(file_to_open, term)
    fp = File.new(file_to_open)
    fp.each do |line|
        if /#{term}/.match(line)
            puts "#{fp.lineno}: #{line}"
        end
    end
    fp.close
    puts "--------------------------------------------------"
end

#get term we are searching for and check for errors
arg_check()
term = ARGV[0].downcase
file_pool = Array.new

file_pool = create_file_pool(Dir.getwd)


puts "**************************************************"
puts "Files with content that matches <#{term}>"
