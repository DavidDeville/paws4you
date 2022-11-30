require "test_helper"

class ListPetControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get list_pet_index_url
    assert_response :success
  end

  test "should get new" do
    get list_pet_new_url
    assert_response :success
  end

  test "should get show" do
    get list_pet_show_url
    assert_response :success
  end

  test "should get create" do
    get list_pet_create_url
    assert_response :success
  end

  test "should get update" do
    get list_pet_update_url
    assert_response :success
  end

  test "should get edit" do
    get list_pet_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get list_pet_destroy_url
    assert_response :success
  end
end
