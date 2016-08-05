require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { accept_or_decline: @customer.accept_or_decline, address: @customer.address, address_confirmed?: @customer.address_confirmed?, agency_name: @customer.agency_name, applicant_name: @customer.applicant_name, applicant_residing_detail: @customer.applicant_residing_detail, application_availibility_time: @customer.application_availibility_time, application_ref_no: @customer.application_ref_no, asset_seen_at_residence: @customer.asset_seen_at_residence, card_limit: @customer.card_limit, card_no: @customer.card_no, carpet_area_in_sq_feet: @customer.carpet_area_in_sq_feet, children: @customer.children, comments_of_exteriors: @customer.comments_of_exteriors, construction_of_residence: @customer.construction_of_residence, credit_card: @customer.credit_card, customer_beaviour: @customer.customer_beaviour, d_o_b: @customer.d_o_b, date_of_visit: @customer.date_of_visit, ease_of_location: @customer.ease_of_location, educational_qualification: @customer.educational_qualification, expiry_date: @customer.expiry_date, fh_code: @customer.fh_code, interior_condition: @customer.interior_condition, issuing_bank: @customer.issuing_bank, landmark: @customer.landmark, locality_of_residence: @customer.locality_of_residence, marital_status: @customer.marital_status, name_and_stay_confirm?: @customer.name_and_stay_confirm?, name_plate_seen: @customer.name_plate_seen, name_varified_from: @customer.name_varified_from, neighbour_ref: @customer.neighbour_ref, no_of_family_member_in_the_house: @customer.no_of_family_member_in_the_house, no_of_family_members: @customer.no_of_family_members, person_contacted: @customer.person_contacted, potrait_on_wall: @customer.potrait_on_wall, refer_to_bank: @customer.refer_to_bank, relation_with_applicant: @customer.relation_with_applicant, residence_status: @customer.residence_status, spouse_working: @customer.spouse_working, spouse_working_detail: @customer.spouse_working_detail, time_of_visit: @customer.time_of_visit, type_of_residence: @customer.type_of_residence, verifiers_remark: @customer.verifiers_remark, working_member: @customer.working_member, years_lived_at_current_address: @customer.years_lived_at_current_address }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    put :update, id: @customer, customer: { accept_or_decline: @customer.accept_or_decline, address: @customer.address, address_confirmed?: @customer.address_confirmed?, agency_name: @customer.agency_name, applicant_name: @customer.applicant_name, applicant_residing_detail: @customer.applicant_residing_detail, application_availibility_time: @customer.application_availibility_time, application_ref_no: @customer.application_ref_no, asset_seen_at_residence: @customer.asset_seen_at_residence, card_limit: @customer.card_limit, card_no: @customer.card_no, carpet_area_in_sq_feet: @customer.carpet_area_in_sq_feet, children: @customer.children, comments_of_exteriors: @customer.comments_of_exteriors, construction_of_residence: @customer.construction_of_residence, credit_card: @customer.credit_card, customer_beaviour: @customer.customer_beaviour, d_o_b: @customer.d_o_b, date_of_visit: @customer.date_of_visit, ease_of_location: @customer.ease_of_location, educational_qualification: @customer.educational_qualification, expiry_date: @customer.expiry_date, fh_code: @customer.fh_code, interior_condition: @customer.interior_condition, issuing_bank: @customer.issuing_bank, landmark: @customer.landmark, locality_of_residence: @customer.locality_of_residence, marital_status: @customer.marital_status, name_and_stay_confirm?: @customer.name_and_stay_confirm?, name_plate_seen: @customer.name_plate_seen, name_varified_from: @customer.name_varified_from, neighbour_ref: @customer.neighbour_ref, no_of_family_member_in_the_house: @customer.no_of_family_member_in_the_house, no_of_family_members: @customer.no_of_family_members, person_contacted: @customer.person_contacted, potrait_on_wall: @customer.potrait_on_wall, refer_to_bank: @customer.refer_to_bank, relation_with_applicant: @customer.relation_with_applicant, residence_status: @customer.residence_status, spouse_working: @customer.spouse_working, spouse_working_detail: @customer.spouse_working_detail, time_of_visit: @customer.time_of_visit, type_of_residence: @customer.type_of_residence, verifiers_remark: @customer.verifiers_remark, working_member: @customer.working_member, years_lived_at_current_address: @customer.years_lived_at_current_address }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
