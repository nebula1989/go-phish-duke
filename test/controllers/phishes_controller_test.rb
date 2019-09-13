require 'test_helper'

class PhishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phish = phishes(:one)
  end

  test "should get index" do
    get phishes_url
    assert_response :success
  end

  test "should get new" do
    get new_phish_url
    assert_response :success
  end

  test "should create phish" do
    assert_difference('Phish.count') do
      post phishes_url, params: { phish: {  } }
    end

    assert_redirected_to phish_url(Phish.last)
  end

  test "should show phish" do
    get phish_url(@phish)
    assert_response :success
  end

  test "should get edit" do
    get edit_phish_url(@phish)
    assert_response :success
  end

  test "should update phish" do
    patch phish_url(@phish), params: { phish: {  } }
    assert_redirected_to phish_url(@phish)
  end

  test "should destroy phish" do
    assert_difference('Phish.count', -1) do
      delete phish_url(@phish)
    end

    assert_redirected_to phishes_url
  end
end
