require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get home_top_url
    assert_response :success
  end

  test "should get select_position" do
    get home_select_position_url
    assert_response :success
  end

  test "should get select_position_E" do
    get home_select_position_E_url
    assert_response :success
  end

  test "should get select_position_K" do
    get home_select_position_K_url
    assert_response :success
  end

  test "should get about" do
    get home_about_url
    assert_response :success
  end

end
