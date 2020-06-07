require 'test_helper'

class HairdressersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hairdressers_index_url
    assert_response :success
  end

  test "should get show" do
    get hairdressers_show_url
    assert_response :success
  end

  test "should get exit" do
    get hairdressers_exit_url
    assert_response :success
  end

  test "should get update" do
    get hairdressers_update_url
    assert_response :success
  end

end
