require ('minitest/autorun')
require ('minitest/reporters')
require_relative('../homework_part_a')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestCodeclanStudent < Minitest::Test

def setup
  @Codeclan_student = CodeclanStudent.new("Ian", "G17")
end

def test_student_name
  assert_equal("Ian", @Codeclan_student.student)
end

def test_class_name
  assert_equal("G17", @Codeclan_student.class)
end

def test_change_name
  @Codeclan_student.student = "pete"
end
def test_change_class
  @Codeclan_student.class = "G15"
end

def test_talk
  @Codeclan_student.student = "Ian"
  @Codeclan_student.talk("I can talk")
end

def test_fav_code
  @Codeclan_student.student = "Ian"
  @Codeclan_student.fav_code("ruby")
end

end
