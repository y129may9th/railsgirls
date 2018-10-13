require 'test_helper'

class EatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eating = eatings(:one)
  end

  test "should get index" do
    get eatings_url
    assert_response :success
  end

  test "should get new" do
    get new_eating_url
    assert_response :success
  end

  test "should create eating" do
    assert_difference('Eating.count') do
      post eatings_url, params: { eating: { description: @eating.description, name: @eating.name, picture: @eating.picture } }
    end

    assert_redirected_to eating_url(Eating.last)
  end

  test "should show eating" do
    get eating_url(@eating)
    assert_response :success
  end

  test "should get edit" do
    get edit_eating_url(@eating)
    assert_response :success
  end

  test "should update eating" do
    patch eating_url(@eating), params: { eating: { description: @eating.description, name: @eating.name, picture: @eating.picture } }
    assert_redirected_to eating_url(@eating)
  end

  test "should destroy eating" do
    assert_difference('Eating.count', -1) do
      delete eating_url(@eating)
    end

    assert_redirected_to eatings_url
  end
end
