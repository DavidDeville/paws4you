require "test_helper"

class ShelterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shelter_index_url
    assert_response :success
  end

  test "should get new" do
    get shelter_new_url
    assert_response :success
  end

  test "should get show" do
    get shelter_show_url
    assert_response :success
  end

  test "should get create" do
    get shelter_create_url
    assert_response :success
  end

  test "should get update" do
    get shelter_update_url
    assert_response :success
  end

  test "should get edit" do
    get shelter_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get shelter_destroy_url
    assert_response :success
  end
end
