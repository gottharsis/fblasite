require 'test_helper'

class StaticControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get static_index_url
    assert_response :success
  end

  test "should get openings" do
    get static_openings_url
    assert_response :success
  end

  test "should get resume" do
    get static_resume_url
    assert_response :success
  end

  test "should get jobapp" do
    get static_jobapp_url
    assert_response :success
  end

  test "should get interview" do
    get static_interview_url
    assert_response :success
  end

end
