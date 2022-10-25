require 'test_helper'

class PlannerSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get planner_sessions_new_url
    assert_response :success
  end

  test "should get create" do
    get planner_sessions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get planner_sessions_destroy_url
    assert_response :success
  end

end
