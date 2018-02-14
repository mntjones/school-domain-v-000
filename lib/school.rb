class School
  attr_accessor :roster
  attr_reader :name, :grade
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
 
    if !@roster.key?(grade)
      @roster[grade] = [name]
    else
      @roster[grade] << name
    end
  end
  
  def grade(grade)

    @roster[grade]
  end
  
  def sort
    sorted = {}
    sorted_keys = @roster.keys.sort
    sorted_values = @roster.values
    sorted_values.collect do |array|
      array.sort
    end
    sorted_values
  end
end