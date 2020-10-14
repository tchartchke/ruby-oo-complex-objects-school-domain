# code here!

class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ? @roster[grade].push(student) : @roster[grade] = [student]
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster = @roster.each {|key, value| @roster[key] = value.sort}
  end

end