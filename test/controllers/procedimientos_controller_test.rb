require 'test_helper'

class ProcedimientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @procedimiento = procedimientos(:one)
  end

  test "should get index" do
    get procedimientos_url
    assert_response :success
  end

  test "should get new" do
    get new_procedimiento_url
    assert_response :success
  end

  test "should create procedimiento" do
    assert_difference('Procedimiento.count') do
      post procedimientos_url, params: { procedimiento: { bigint: @procedimiento.bigint, descripcion: @procedimiento.descripcion, precio: @procedimiento.precio, precio_costo: @procedimiento.precio_costo, precio_sruka: @procedimiento.precio_sruka } }
    end

    assert_redirected_to procedimiento_url(Procedimiento.last)
  end

  test "should show procedimiento" do
    get procedimiento_url(@procedimiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_procedimiento_url(@procedimiento)
    assert_response :success
  end

  test "should update procedimiento" do
    patch procedimiento_url(@procedimiento), params: { procedimiento: { bigint: @procedimiento.bigint, descripcion: @procedimiento.descripcion, precio: @procedimiento.precio, precio_costo: @procedimiento.precio_costo, precio_sruka: @procedimiento.precio_sruka } }
    assert_redirected_to procedimiento_url(@procedimiento)
  end

  test "should destroy procedimiento" do
    assert_difference('Procedimiento.count', -1) do
      delete procedimiento_url(@procedimiento)
    end

    assert_redirected_to procedimientos_url
  end
end
