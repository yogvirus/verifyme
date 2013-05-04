require 'test_helper'

class CustomerDocumentsControllerTest < ActionController::TestCase
  setup do
    @customer_document = customer_documents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_documents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_document" do
    assert_difference('CustomerDocument.count') do
      post :create, customer_document: {  }
    end

    assert_redirected_to customer_document_path(assigns(:customer_document))
  end

  test "should show customer_document" do
    get :show, id: @customer_document
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_document
    assert_response :success
  end

  test "should update customer_document" do
    put :update, id: @customer_document, customer_document: {  }
    assert_redirected_to customer_document_path(assigns(:customer_document))
  end

  test "should destroy customer_document" do
    assert_difference('CustomerDocument.count', -1) do
      delete :destroy, id: @customer_document
    end

    assert_redirected_to customer_documents_path
  end
end
