require 'test_helper'

class MerchandisingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @merchandising = merchandisings(:one)
  end

  test "should get index" do
    get merchandisings_url
    assert_response :success
  end

  test "should get new" do
    get new_merchandising_url
    assert_response :success
  end

  test "should create merchandising" do
    assert_difference('Merchandising.count') do
      post merchandisings_url, params: { merchandising: { descripcion: @merchandising.descripcion, nombre: @merchandising.nombre, picture: @merchandising.picture, precio_costo: @merchandising.precio_costo, precio_venta: @merchandising.precio_venta, proveedor_id: @merchandising.proveedor_id, tipo: @merchandising.tipo, unidades: @merchandising.unidades } }
    end

    assert_redirected_to merchandising_url(Merchandising.last)
  end

  test "should show merchandising" do
    get merchandising_url(@merchandising)
    assert_response :success
  end

  test "should get edit" do
    get edit_merchandising_url(@merchandising)
    assert_response :success
  end

  test "should update merchandising" do
    patch merchandising_url(@merchandising), params: { merchandising: { descripcion: @merchandising.descripcion, nombre: @merchandising.nombre, picture: @merchandising.picture, precio_costo: @merchandising.precio_costo, precio_venta: @merchandising.precio_venta, proveedor_id: @merchandising.proveedor_id, tipo: @merchandising.tipo, unidades: @merchandising.unidades } }
    assert_redirected_to merchandising_url(@merchandising)
  end

  test "should destroy merchandising" do
    assert_difference('Merchandising.count', -1) do
      delete merchandising_url(@merchandising)
    end

    assert_redirected_to merchandisings_url
  end
end
