require 'test_helper'

class AdpocionesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get adpociones_new_url
    assert_response :success
  end

end
