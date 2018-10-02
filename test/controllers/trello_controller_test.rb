require 'test_helper'

class TrelloControllerTest < ActionDispatch::IntegrationTest
  test "should get sticky" do
    get trello_sticky_url
    assert_response :success
  end

end
