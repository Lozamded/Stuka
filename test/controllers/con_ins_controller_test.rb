require 'test_helper'

class ConInsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @con_in = con_ins(:one)
  end

  test "should get index" do
    get con_ins_url
    assert_response :success
  end

  test "should get new" do
    get new_con_in_url
    assert_response :success
  end

  test "should create con_in" do
    assert_difference('ConIn.count') do
      post con_ins_url, params: { con_in: { consulta_id: @con_in.consulta_id, nombre: @con_in.nombre } }
    end

    assert_redirected_to con_in_url(ConIn.last)
  end

  test "should show con_in" do
    get con_in_url(@con_in)
    assert_response :success
  end

  test "should get edit" do
    get edit_con_in_url(@con_in)
    assert_response :success
  end

  test "should update con_in" do
    patch con_in_url(@con_in), params: { con_in: { consulta_id: @con_in.consulta_id, nombre: @con_in.nombre } }
    assert_redirected_to con_in_url(@con_in)
  end

  test "should destroy con_in" do
    assert_difference('ConIn.count', -1) do
      delete con_in_url(@con_in)
    end

    assert_redirected_to con_ins_url
  end
end
