require 'test_helper'

class ProcesoExamenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proceso_examan = proceso_examen(:one)
  end

  test "should get index" do
    get proceso_examen_url
    assert_response :success
  end

  test "should get new" do
    get new_proceso_examan_url
    assert_response :success
  end

  test "should create proceso_examan" do
    assert_difference('ProcesoExaman.count') do
      post proceso_examen_url, params: { proceso_examan: { proceso: @proceso_examan.proceso } }
    end

    assert_redirected_to proceso_examan_url(ProcesoExaman.last)
  end

  test "should show proceso_examan" do
    get proceso_examan_url(@proceso_examan)
    assert_response :success
  end

  test "should get edit" do
    get edit_proceso_examan_url(@proceso_examan)
    assert_response :success
  end

  test "should update proceso_examan" do
    patch proceso_examan_url(@proceso_examan), params: { proceso_examan: { proceso: @proceso_examan.proceso } }
    assert_redirected_to proceso_examan_url(@proceso_examan)
  end

  test "should destroy proceso_examan" do
    assert_difference('ProcesoExaman.count', -1) do
      delete proceso_examan_url(@proceso_examan)
    end

    assert_redirected_to proceso_examen_url
  end
end
