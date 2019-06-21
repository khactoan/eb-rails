require 'test_helper'

class ChatworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chatwork = chatworks(:one)
  end

  test "should get index" do
    get chatworks_url
    assert_response :success
  end

  test "should get new" do
    get new_chatwork_url
    assert_response :success
  end

  test "should create chatwork" do
    assert_difference('Chatwork.count') do
      post chatworks_url, params: { chatwork: { api_token: @chatwork.api_token, user_id: @chatwork.user_id } }
    end

    assert_redirected_to chatwork_url(Chatwork.last)
  end

  test "should show chatwork" do
    get chatwork_url(@chatwork)
    assert_response :success
  end

  test "should get edit" do
    get edit_chatwork_url(@chatwork)
    assert_response :success
  end

  test "should update chatwork" do
    patch chatwork_url(@chatwork), params: { chatwork: { api_token: @chatwork.api_token, user_id: @chatwork.user_id } }
    assert_redirected_to chatwork_url(@chatwork)
  end

  test "should destroy chatwork" do
    assert_difference('Chatwork.count', -1) do
      delete chatwork_url(@chatwork)
    end

    assert_redirected_to chatworks_url
  end
end
