require 'test_helper'

class PointHistorysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get point_historys_index_url
    assert_response :success
  end

  test "should get show" do
    get point_historys_show_url
    assert_response :success
  end

  test "should get new" do
    get point_historys_new_url
    assert_response :success
  end

  test "should get edit" do
    get point_historys_edit_url
    assert_response :success
  end

  test "should get create" do
    get point_historys_create_url
    assert_response :success
  end

  test "should get update" do
    get point_historys_update_url
    assert_response :success
  end

  test "should get destroy" do
    get point_historys_destroy_url
    assert_response :success
  end

end
