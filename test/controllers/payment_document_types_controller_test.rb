require 'test_helper'

class PaymentDocumentTypesControllerTest < ActionController::TestCase
  setup do
    @payment_document_type = payment_document_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payment_document_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payment_document_type" do
    assert_difference('PaymentDocumentType.count') do
      post :create, payment_document_type: { description: @payment_document_type.description, name: @payment_document_type.name }
    end

    assert_redirected_to payment_document_type_path(assigns(:payment_document_type))
  end

  test "should show payment_document_type" do
    get :show, id: @payment_document_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payment_document_type
    assert_response :success
  end

  test "should update payment_document_type" do
    patch :update, id: @payment_document_type, payment_document_type: { description: @payment_document_type.description, name: @payment_document_type.name }
    assert_redirected_to payment_document_type_path(assigns(:payment_document_type))
  end

  test "should destroy payment_document_type" do
    assert_difference('PaymentDocumentType.count', -1) do
      delete :destroy, id: @payment_document_type
    end

    assert_redirected_to payment_document_types_path
  end
end
