require "test_helper"

class HomepageControllerTest < ActionDispatch::IntegrationTest
    setup do
    @user = User.create(name:"John Doe", email:"admin@doe.com", password:"welcome", password_confirmation:"welcome", role:"admin", gender: "male", address:"ksi")
    sign_in(@user)
  end


  test "should get index" do
    get homepage_index_url
    assert_response :success
  end
end
