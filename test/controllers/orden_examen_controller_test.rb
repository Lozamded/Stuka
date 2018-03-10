require 'test_helper'

class OrdenExamenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orden_examan = orden_examen(:one)
  end

  test "should get index" do
    get orden_examen_url
    assert_response :success
  end

  test "should get new" do
    get new_orden_examan_url
    assert_response :success
  end

  test "should create orden_examan" do
    assert_difference('OrdenExaman.count') do
      post orden_examen_url, params: { orden_examan: { comentario: @orden_examan.comentario, fecha_examen: @orden_examan.fecha_examen, plazo_examen: @orden_examan.plazo_examen, proceso_examen: @orden_examan.proceso_examen } }
    end

    assert_redirected_to orden_examan_url(OrdenExaman.last)
  end

  test "should show orden_examan" do
    get orden_examan_url(@orden_examan)
    assert_response :success
  end

  test "should get edit" do
    get edit_orden_examan_url(@orden_examan)
    assert_response :success
  end

  test "should update orden_examan" do
    patch orden_examan_url(@orden_examan), params: { orden_examan: { comentario: @orden_examan.comentario, fecha_examen: @orden_examan.fecha_examen, plazo_examen: @orden_examan.plazo_examen, proceso_examen: @orden_examan.proceso_examen } }
    assert_redirected_to orden_examan_url(@orden_examan)
  end

  test "should destroy orden_examan" do
    assert_difference('OrdenExaman.count', -1) do
      delete orden_examan_url(@orden_examan)
    end

    assert_redirected_to orden_examen_url
  end
end
