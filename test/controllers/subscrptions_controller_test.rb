require 'test_helper'

class SubscrptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subscrption = subscrptions(:one)
  end

  test "should get index" do
    get subscrptions_url, as: :json
    assert_response :success
  end

  test "should create subscrption" do
    assert_difference('Subscrption.count') do
      post subscrptions_url, params: { subscrption: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show subscrption" do
    get subscrption_url(@subscrption), as: :json
    assert_response :success
  end

  test "should update subscrption" do
    patch subscrption_url(@subscrption), params: { subscrption: {  } }, as: :json
    assert_response 200
  end

  test "should destroy subscrption" do
    assert_difference('Subscrption.count', -1) do
      delete subscrption_url(@subscrption), as: :json
    end

    assert_response 204
  end
end
