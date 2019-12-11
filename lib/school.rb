class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end #init

  def add_student(stud_name, stud_grade)
    @roster[stud_grade] = [] if !@roster.keys.include?(stud_grade)
    @roster[stud_grade] << stud_name
  end

  def grade(a_grade)
    @roster[a_grade]
  end 

  def sort
    @roster.each do |grade, students|
        students.sort!
    end #each
  end 
end #class