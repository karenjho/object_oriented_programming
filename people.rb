# create two classes: Student and Instructor
class Person # create Person class
  attr_accessor :name
end

class Student < Person # add Student class to Person class
  def learn # add learn method to Student
    puts "I get it!"
  end
end

class Instructor # add Instructor class to Person class
  def teach # add teach method to Instructor
    "Everything in Ruby is an Object."
  end
end
