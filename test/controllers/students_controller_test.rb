require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get student_view" do
    get students_student_view_url
    assert_response :success
  end
end
