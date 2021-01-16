require 'test_helper'

class DenunciationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @denunciation = denunciations(:one)
  end

  test "should get index" do
    get denunciations_url, as: :json
    assert_response :success
  end

  test "should create denunciation" do
    assert_difference('Denunciation.count') do
      post denunciations_url, params: { denunciation: { description: @denunciation.description, link: @denunciation.link, status: @denunciation.status, title: @denunciation.title, type: @denunciation.type } }, as: :json
    end

    assert_response 201
  end

  test "should show denunciation" do
    get denunciation_url(@denunciation), as: :json
    assert_response :success
  end

  test "should update denunciation" do
    patch denunciation_url(@denunciation), params: { denunciation: { description: @denunciation.description, link: @denunciation.link, status: @denunciation.status, title: @denunciation.title, type: @denunciation.type } }, as: :json
    assert_response 200
  end

  test "should destroy denunciation" do
    assert_difference('Denunciation.count', -1) do
      delete denunciation_url(@denunciation), as: :json
    end

    assert_response 204
  end
end
