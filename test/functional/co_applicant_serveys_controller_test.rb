require 'test_helper'

class CoApplicantServeysControllerTest < ActionController::TestCase
  setup do
    @co_applicant_servey = co_applicant_serveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:co_applicant_serveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create co_applicant_servey" do
    assert_difference('CoApplicantServey.count') do
      post :create, co_applicant_servey: {  }
    end

    assert_redirected_to co_applicant_servey_path(assigns(:co_applicant_servey))
  end

  test "should show co_applicant_servey" do
    get :show, id: @co_applicant_servey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @co_applicant_servey
    assert_response :success
  end

  test "should update co_applicant_servey" do
    put :update, id: @co_applicant_servey, co_applicant_servey: {  }
    assert_redirected_to co_applicant_servey_path(assigns(:co_applicant_servey))
  end

  test "should destroy co_applicant_servey" do
    assert_difference('CoApplicantServey.count', -1) do
      delete :destroy, id: @co_applicant_servey
    end

    assert_redirected_to co_applicant_serveys_path
  end
end
