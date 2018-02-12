# Non-obvious Iterators in Ruby

# Iterators operate on collections

# A file is a collection of lines
file = File.open('fog.txt')

file.each { |line| puts line }

# A directory is a collection of files and directories (entries)

dir = Dir.new('/Users/Ian')
dir.each { |entry| puts entry }

# Prime#each is defined

require 'mathn'

Prime.each { |num| puts num }