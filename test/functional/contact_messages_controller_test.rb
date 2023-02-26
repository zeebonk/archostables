require 'test_helper'

class ContactMessagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_message" do
    assert_difference('ContactMessage.count') do
      post :create, :contact_message => { }
    end

    assert_redirected_to contact_message_path(assigns(:contact_message))
  end

  test "should show contact_message" do
    get :show, :id => contact_messages(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => contact_messages(:one).to_param
    assert_response :success
  end

  test "should update contact_message" do
    put :update, :id => contact_messages(:one).to_param, :contact_message => { }
    assert_redirected_to contact_message_path(assigns(:contact_message))
  end

  test "should destroy contact_message" do
    assert_difference('ContactMessage.count', -1) do
      delete :destroy, :id => contact_messages(:one).to_param
    end

    assert_redirected_to contact_messages_path
  end
end
