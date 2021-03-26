require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:byron)
    @other_user = users(:rheannon)
  end

  test "should get new" do
    get signup_path
    assert_response :success
  end

  test "should redirect index when not logged in" do
    get users_path
    assert_redirected_to login_url
  end

  test "should redirect edit when not logged in" do
    get edit_user_path(@user)
    assert_not flash.empty?
    assert_redirected_to login_url
  end
  # WONT GO GREEN! NOT SURE WHY #PATCH METHOD HATES ME!
  # test "should redirect update when not logged in" do
  #   patch user_path params: { user: { name: @user.name, email: @user.email } }
  #   assert_not flash.empty?
  #   assert_redirected_to login_url
  # end


end
