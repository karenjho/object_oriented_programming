# create two classes: Student and Instructor
class Person # create Person class
  attr_accessor :name

  def greeting # add greeting method
    puts "Hi, my name is #{name}."
  end
end

class Student < Person # add Student class to Person class
  def learn # add learn method to Student
    puts "I get it!"
  end
end

class Instructor < Person # add Instructor class to Person class
  def teach # add teach method to Instructor
    puts "Everything in Ruby is an Object."
  end
end

# create Chris. he tells us his name.
chris = Instructor.new
chris.name = "Chris"
chris.greeting

# create Cristina. she tells us her name.
cristina = Student.new
cristina.name = "Cristina"
cristina.greeting

# ask Chris to teach. he teaches.
chris.teach

# ask Cristina to learn. she learns.
cristina.learn

# ask Cristina to teach. she doesn't know what the hell is going on.
cristina.teach
#### teach is a method specific to the Instructor class.
#### as an object of the Student class, cristina cannot see/run the teach method.
