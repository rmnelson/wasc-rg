require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { academic_lev: @student.academic_lev, availability: @student.availability, course_id: @student.course_id, first_name: @student.first_name, full_name: @student.full_name, grade_basis: @student.grade_basis, last_name: @student.last_name, program_id: @student.program_id, student_id: @student.student_id, username: @student.username }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    patch :update, id: @student, student: { academic_lev: @student.academic_lev, availability: @student.availability, course_id: @student.course_id, first_name: @student.first_name, full_name: @student.full_name, grade_basis: @student.grade_basis, last_name: @student.last_name, program_id: @student.program_id, student_id: @student.student_id, username: @student.username }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
