require 'test_helper'

class CourseWorksControllerTest < ActionController::TestCase
  setup do
    @course_work = course_works(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_works)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_work" do
    assert_difference('CourseWork.count') do
      post :create, course_work: { course_id: @course_work.course_id, name: @course_work.name }
    end

    assert_redirected_to course_work_path(assigns(:course_work))
  end

  test "should show course_work" do
    get :show, id: @course_work
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_work
    assert_response :success
  end

  test "should update course_work" do
    patch :update, id: @course_work, course_work: { course_id: @course_work.course_id, name: @course_work.name }
    assert_redirected_to course_work_path(assigns(:course_work))
  end

  test "should destroy course_work" do
    assert_difference('CourseWork.count', -1) do
      delete :destroy, id: @course_work
    end

    assert_redirected_to course_works_path
  end
end
