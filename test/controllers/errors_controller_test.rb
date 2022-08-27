require "test_helper"

class ErrorsControllerTest < ActionDispatch::IntegrationTest
  test "should get not_found" do
    get errors_not_found_url
    assert_response :not_found
  end

  test "should get internal_server" do
    get errors_internal_server_url
    assert_response :internal_server_error
  end

  test "should get unprocessable" do
    get errors_unprocessable_url
    assert_response :unprocessable_entity
  end
end
