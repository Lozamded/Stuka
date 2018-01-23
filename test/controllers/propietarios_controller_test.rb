require 'test_helper'

class PropietariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @propietario = propietarios(:one)
  end

  test "should get index" do
    get propietarios_url
    assert_response :success
  end

  test "should get new" do
    get new_propietario_url
    assert_response :success
  end

  test "should create propietario" do
    assert_difference('Propietario.count') do
      post propietarios_url, params: { propietario: { comuna: @propietario.comuna, direccion: @propietario.direccion, email: @propietario.email, fecha_nacimiento: @propietario.fecha_nacimiento, nombre: @propietario.nombre, telefono: @propietario.telefono } }
    end

    assert_redirected_to propietario_url(Propietario.last)
  end

  test "should show propietario" do
    get propietario_url(@propietario)
    assert_response :success
  end

  test "should get edit" do
    get edit_propietario_url(@propietario)
    assert_response :success
  end

  test "should update propietario" do
    patch propietario_url(@propietario), params: { propietario: { comuna: @propietario.comuna, direccion: @propietario.direccion, email: @propietario.email, fecha_nacimiento: @propietario.fecha_nacimiento, nombre: @propietario.nombre, telefono: @propietario.telefono } }
    assert_redirected_to propietario_url(@propietario)
  end

  test "should destroy propietario" do
    assert_difference('Propietario.count', -1) do
      delete propietario_url(@propietario)
    end

    assert_redirected_to propietarios_url
  end
end
