require 'test_helper'

class HairCatalogsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get hair_catalogs_new_url
    assert_response :success
  end

  test "should get create" do
    get hair_catalogs_create_url
    assert_response :success
  end

  test "should get show" do
    get hair_catalogs_show_url
    assert_response :success
  end

  test "should get edit" do
    get hair_catalogs_edit_url
    assert_response :success
  end

  test "should get update" do
    get hair_catalogs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get hair_catalogs_destroy_url
    assert_response :success
  end

end
