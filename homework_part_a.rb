class CodeclanStudent
  attr_reader :student, :class
  attr_writer :student, :class

def initialize(input_student, input_class)
  @student = input_student
  @class = input_class
  end

def talk(value)
  return value
end

def fav_code(value)
  return "I love" + value
end 






end
