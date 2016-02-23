require 'test_helper'

class ContactListsControllerTest < ActionController::TestCase
  setup do
    @contact_list = contact_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_list" do
    assert_difference('ContactList.count') do
      post :create, contact_list: { contact_number: @contact_list.contact_number, name: @contact_list.name }
    end

    assert_redirected_to contact_list_path(assigns(:contact_list))
  end

  test "should show contact_list" do
    get :show, id: @contact_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact_list
    assert_response :success
  end

  test "should update contact_list" do
    patch :update, id: @contact_list, contact_list: { contact_number: @contact_list.contact_number, name: @contact_list.name }
    assert_redirected_to contact_list_path(assigns(:contact_list))
  end

  test "should destroy contact_list" do
    assert_difference('ContactList.count', -1) do
      delete :destroy, id: @contact_list
    end

    assert_redirected_to contact_lists_path
  end
end
