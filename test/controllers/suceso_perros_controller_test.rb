require 'test_helper'

class SucesoPerrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suceso_perro = suceso_perros(:one)
  end

  test "should get index" do
    get suceso_perros_url
    assert_response :success
  end

  test "should get new" do
    get new_suceso_perro_url
    assert_response :success
  end

  test "should create suceso_perro" do
    assert_difference('SucesoPerro.count') do
      post suceso_perros_url, params: { suceso_perro: { fecha: @suceso_perro.fecha, involucrado: @suceso_perro.involucrado, perro_id: @suceso_perro.perro_id, propietario_id: @suceso_perro.propietario_id, socio_id: @suceso_perro.socio_id, suceso: @suceso_perro.suceso } }
    end

    assert_redirected_to suceso_perro_url(SucesoPerro.last)
  end

  test "should show suceso_perro" do
    get suceso_perro_url(@suceso_perro)
    assert_response :success
  end

  test "should get edit" do
    get edit_suceso_perro_url(@suceso_perro)
    assert_response :success
  end

  test "should update suceso_perro" do
    patch suceso_perro_url(@suceso_perro), params: { suceso_perro: { fecha: @suceso_perro.fecha, involucrado: @suceso_perro.involucrado, perro_id: @suceso_perro.perro_id, propietario_id: @suceso_perro.propietario_id, socio_id: @suceso_perro.socio_id, suceso: @suceso_perro.suceso } }
    assert_redirected_to suceso_perro_url(@suceso_perro)
  end

  test "should destroy suceso_perro" do
    assert_difference('SucesoPerro.count', -1) do
      delete suceso_perro_url(@suceso_perro)
    end

    assert_redirected_to suceso_perros_url
  end
end
