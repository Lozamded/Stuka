require 'test_helper'

class VeterinariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @veterinario = veterinarios(:one)
  end

  test "should get index" do
    get veterinarios_url
    assert_response :success
  end

  test "should get new" do
    get new_veterinario_url
    assert_response :success
  end

  test "should create veterinario" do
    assert_difference('Veterinario.count') do
      post veterinarios_url, params: { veterinario: { email: @veterinario.email, especialidad: @veterinario.especialidad, fecha_nacimiento: @veterinario.fecha_nacimiento, nombre: @veterinario.nombre, telefono: @veterinario.telefono } }
    end

    assert_redirected_to veterinario_url(Veterinario.last)
  end

  test "should show veterinario" do
    get veterinario_url(@veterinario)
    assert_response :success
  end

  test "should get edit" do
    get edit_veterinario_url(@veterinario)
    assert_response :success
  end

  test "should update veterinario" do
    patch veterinario_url(@veterinario), params: { veterinario: { email: @veterinario.email, especialidad: @veterinario.especialidad, fecha_nacimiento: @veterinario.fecha_nacimiento, nombre: @veterinario.nombre, telefono: @veterinario.telefono } }
    assert_redirected_to veterinario_url(@veterinario)
  end

  test "should destroy veterinario" do
    assert_difference('Veterinario.count', -1) do
      delete veterinario_url(@veterinario)
    end

    assert_redirected_to veterinarios_url
  end
end
