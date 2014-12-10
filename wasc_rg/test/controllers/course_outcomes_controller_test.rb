require 'test_helper'

class CourseOutcomesControllerTest < ActionController::TestCase
  setup do
    @course_outcome = course_outcomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_outcomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_outcome" do
    assert_difference('CourseOutcome.count') do
      post :create, course_outcome: { course_work_id: @course_outcome.course_work_id, outcome_id: @course_outcome.outcome_id }
    end

    assert_redirected_to course_outcome_path(assigns(:course_outcome))
  end

  test "should show course_outcome" do
    get :show, id: @course_outcome
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_outcome
    assert_response :success
  end

  test "should update course_outcome" do
    patch :update, id: @course_outcome, course_outcome: { course_work_id: @course_outcome.course_work_id, outcome_id: @course_outcome.outcome_id }
    assert_redirected_to course_outcome_path(assigns(:course_outcome))
  end

  test "should destroy course_outcome" do
    assert_difference('CourseOutcome.count', -1) do
      delete :destroy, id: @course_outcome
    end

    assert_redirected_to course_outcomes_path
  end
end
