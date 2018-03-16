class Student
  def initialize(name,age)
    @name=name
    @age=age
  end
  def getName
    @name
  end
  private :getName
end

veera = Student.new("veera",18)
puts veera.send(:getName)
