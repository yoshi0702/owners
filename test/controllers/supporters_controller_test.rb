require 'test_helper'

class SupportersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get supporters_index_url
    assert_response :success
  end

  test "should get show" do
    get supporters_show_url
    assert_response :success
  end

  test "should get new" do
    get supporters_new_url
    assert_response :success
  end

  test "should get edit" do
    get supporters_edit_url
    assert_response :success
  end

  test "should get create" do
    get supporters_create_url
    assert_response :success
  end

  test "should get update" do
    get supporters_update_url
    assert_response :success
  end

  test "should get destroy" do
    get supporters_destroy_url
    assert_response :success
  end

end
