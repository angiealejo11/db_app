require 'test_helper'

class AuthorsPublicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @authors_publication = authors_publications(:one)
  end

  test "should get index" do
    get authors_publications_url, as: :json
    assert_response :success
  end

  test "should create authors_publication" do
    assert_difference('AuthorsPublication.count') do
      post authors_publications_url, params: { authors_publication: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show authors_publication" do
    get authors_publication_url(@authors_publication), as: :json
    assert_response :success
  end

  test "should update authors_publication" do
    patch authors_publication_url(@authors_publication), params: { authors_publication: {  } }, as: :json
    assert_response 200
  end

  test "should destroy authors_publication" do
    assert_difference('AuthorsPublication.count', -1) do
      delete authors_publication_url(@authors_publication), as: :json
    end

    assert_response 204
  end
end
