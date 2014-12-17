require 'pp'
require_relative "curriculum"
# Require the Ruby file
#
# Print out the unit names with the comment counts
#
# Expected output
#
#   Orientation - 9
#   Rails Basics - 15
#   CRUD - 12

CURRICULUM[:units].each do |unit|
  unit_comments = 0
  lesson_comments = 0

  unit[:lessons].each do |lesson|
    lesson[:occurrences].each do |occurence|
      lesson_comments += occurence[1][:comments].count
    end
  end
  unit_comments += lesson_comments
  p "#{unit[:name]} - #{unit_comments}"
end
