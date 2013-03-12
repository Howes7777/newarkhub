require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  
  test "should get show" do
    get :show, id: users(:test1234).profile_name
    assert_response :success
    assert_template 'profiles/show'
  end

	test "should render a 404 on profile not found" do
    get :show, id: "doesn't exist"
    assert_response :not_found
  end

  test "that variables are assined on successful profile viewing" do
 	  get :show, id: users(:test1234).profile_name
 	  assert assigns(:user)
 	  assert_not_empty assigns(:events)
	end

  test "only shows the correct user's eventname" do
    get :show, id: users(:test1234).profile_name
    assigns(:events).each do |event|
      assert_equal users(:test1234), event.user
    end
  end
end