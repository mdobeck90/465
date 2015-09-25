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
            file_pool.push(File.path(file))
        end
    end
    return file_pool
end

def file_check(file_to_check, term)
    if /#{term}/.match(file_to_check)
        file_path = File.path(file_to_check)
        puts "  ./" + file_path
    end
end

def line_check(file_to_open, term)
    pos_hit = false
    lines_pool = Array.new

    fp = File.new(file_to_open)
    fp.each do |line|
        if /#{term}/.match(line)
            pos_hit = true
            lines_pool.push("  #{fp.lineno}: #{line}")
        end
    end
    fp.close

    if pos_hit
        file_path = File.path(file_to_open)
        lines_pool.push( "./" + file_path)
        return lines_pool
    else
        pos_hit = false
    end 
end

#get term we are searching for and check for errors
arg_check()
term = ARGV[0].downcase
=begin
input = ARGV[0].downcase
puts input
puts input.split('"')
term = input
puts term
=end
file_pool = Array.new
lines_pool = Array.new

file_pool = create_file_pool(Dir.getwd)

puts "Files with names that matches <#{term}>"
#call file_check to print all matching file names
#change files that don't have a match in content to nil
file_pool.each do |file|
    file_check(file, term)
    if line_check(file, term) == false
        file_pool[file_pool.find_index(file)] = nil
    end
end

#remove all nils
file_pool = file_pool.compact
file_pool.sort!

puts "**************************************************"
puts "Files with content that matches <#{term}>"
#go through the remainining file pool and print all matching content
file_pool.each do |file|
    if lines_pool = line_check(file, term)
        puts lines_pool.last
        lines_pool.delete(lines_pool.last)
        lines_pool.each do |line|
            puts line
        end
        #only print the dashed line if we're not the last element in the file_pool
        if file_pool.find_index(file)+1 != file_pool.length
            puts "--------------------------------------------------"
        end
    end
end
