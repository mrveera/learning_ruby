class Student
  @@college="apt"
  def initialize(roll_no,name)
    @roll_no=roll_no
    @name=name
  end
  def to_s
    puts "#{@name} has #{@roll_no}"
  end
  def getName
    return @name
  end
  def changeName(name)
    @name=name
  end
  def getCollege
    return @@college
  end
end

veera = Student.new(249,"veera")
puts veera.getName
veera.changeName "vv"
puts veera.getName

puts "my college  :" + veera.getCollege


