require 'test_helper'

class BusinessesControllerTest < ActionController::TestCase
  setup do
    @business = businesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:businesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business" do
    assert_difference('Business.count') do
      post :create, business: { address: @business.address, agency_name: @business.agency_name, applicant_name: @business.applicant_name, application_ref_no: @business.application_ref_no, country_city: @business.country_city, country_name: @business.country_name, country_state: @business.country_state, date_of_birth: @business.date_of_birth, document_required: @business.document_required, fh_code: @business.fh_code, landmark: @business.landmark, latitude: @business.latitude, longitude: @business.longitude, pincode_id: @business.pincode_id, slug: @business.slug, status: @business.status }
    end

    assert_redirected_to business_path(assigns(:business))
  end

  test "should show business" do
    get :show, id: @business
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business
    assert_response :success
  end

  test "should update business" do
    put :update, id: @business, business: { address: @business.address, agency_name: @business.agency_name, applicant_name: @business.applicant_name, application_ref_no: @business.application_ref_no, country_city: @business.country_city, country_name: @business.country_name, country_state: @business.country_state, date_of_birth: @business.date_of_birth, document_required: @business.document_required, fh_code: @business.fh_code, landmark: @business.landmark, latitude: @business.latitude, longitude: @business.longitude, pincode_id: @business.pincode_id, slug: @business.slug, status: @business.status }
    assert_redirected_to business_path(assigns(:business))
  end

  test "should destroy business" do
    assert_difference('Business.count', -1) do
      delete :destroy, id: @business
    end

    assert_redirected_to businesses_path
  end
end
