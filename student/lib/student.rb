require 'pry'
class Student
  attr_reader :first_name, :last_name, :grades

  def initialize(first_name, last_name, grades)
    @first_name = first_name
    @last_name = last_name
    @grades = grades
  end

  def grade_average(grades)
   average = grades.inject(:+)
  average/grades.length
end

 def full_name
   @first_name + " " + @last_name
 end

 def letter_grade(grade_average)
   letters = {'A' => (90.0..100), 'B' => (80.0..89.0),'C' => (70.0..79.0),'D' => (60.0..69.0),'F' => (0.0..59.0)}
   grade = letters.select { |k,v| v.cover?(grade_average(grades))}
   grade.keys[0]
 end

 def passed?(letter_grade)
  letter_grade != 'F'
 end

 def to_s(grades)
  "Name: #{full_name} , Average: #{grade_average(grades)} , Grade: #{letter_grade(grades)}"
 end

end


me = Student.new('Eric', "Whitebloom", [94,87,76,83,97])
puts me.to_s(me.grades)
puts me.first_name
puts me.full_name
puts me.last_name
average =  me.grade_average(me.grades)
letter_grade = me.letter_grade(average)
puts average
puts letter_grade
