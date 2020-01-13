require ('minitest/autorun')
require ('minitest/reporters')
require_relative('../homework_part_c')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class Testlibrary < Minitest::Test

  def setup
    @library = Library.new[
      {
        title: "Lord_of_the_rings",
        rental_details:{
          student_name: "Jeff",
          date: "1/12/16"
        }
      },
      {
        title: "the_boys",
        rental_details:{
          student_name: "Scott",
          date: "12/11/16"
        }
      },
      {
        title: "Book_of_cats",
        rental_details:{
          student_name: "Ian",
          date: "21/10/16"
        }
      }

    ]
  end

  def test_book_info
    assert_equal("Lord_of_the_rings",@library.book[:title])
  end
end
 
