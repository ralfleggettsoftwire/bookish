require "test_helper"

class CopiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get copies_index_url
    assert_response :success
  end

  test "should get new" do
    get copies_new_url
    assert_response :success
  end

  test "should get create" do
    get copies_create_url
    assert_response :success
  end

  test "should get show" do
    get copies_show_url
    assert_response :success
  end

  test "should get edit" do
    get copies_edit_url
    assert_response :success
  end

  test "should get update" do
    get copies_update_url
    assert_response :success
  end

  test "should get destroy" do
    get copies_destroy_url
    assert_response :success
  end
end
