require 'test_helper'

class IpasControllerTest < ActionController::TestCase
  setup do
    @ipa = ipas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ipas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ipa" do
    assert_difference('Ipa.count') do
      post :create, ipa: { course_id: @ipa.course_id, letter: @ipa.letter, outcome_id: @ipa.outcome_id }
    end

    assert_redirected_to ipa_path(assigns(:ipa))
  end

  test "should show ipa" do
    get :show, id: @ipa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ipa
    assert_response :success
  end

  test "should update ipa" do
    patch :update, id: @ipa, ipa: { course_id: @ipa.course_id, letter: @ipa.letter, outcome_id: @ipa.outcome_id }
    assert_redirected_to ipa_path(assigns(:ipa))
  end

  test "should destroy ipa" do
    assert_difference('Ipa.count', -1) do
      delete :destroy, id: @ipa
    end

    assert_redirected_to ipas_path
  end
end
