require 'pp'
require 'json'
curriculum = File.read('curriculum.json')

CURRICULUM = JSON.parse(curriculum, symbolize_names: true)

# Require json and parse the json file
#
# Print out the lesson names with the total number of comments
#
# Expected output
#
#   Orientation
#     Name Games - 3
#     Mind Maps - 4
#     Sequence Diagrams - 2
#   Rails Basics
#     Controllers - 5
#     Models - 0
#     Views - 8
#     Migrations - 2
#   CRUD
#     Create - 3
#     Read - 1
#     Update - 6
#     Delete - 2
CURRICULUM[:units].each do |unit|
  puts unit[:name]
  unit[:lessons].each do |name|
    puts " #{name[:name]}" +
  end
  lesson[:occurrences].each do |occurence|
    puts " - #{occurence[1][:comments].count}"
  end
end


CURRICULUM[:units].each do |unit|
  p unit[:name]
  unit[:lessons].each do |lesson|
    total_comments = 0
    lesson[:occurrences].each do |occurence|
      total_comments += occurence[1][:comments].count
    end
    p "  #{lesson[:name]} - #{total_comments}"
  end
end
