require 'test_helper'

class ModelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get models_index_url
    assert_response :success
  end

  test "should get show" do
    get models_show_url
    assert_response :success
  end

  test "should get edit" do
    get models_edit_url
    assert_response :success
  end

  test "should get update" do
    get models_update_url
    assert_response :success
  end

end
