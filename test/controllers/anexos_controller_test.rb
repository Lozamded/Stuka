require 'test_helper'

class AnexosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anexo = anexos(:one)
  end

  test "should get index" do
    get anexos_url
    assert_response :success
  end

  test "should get new" do
    get new_anexo_url
    assert_response :success
  end

  test "should create anexo" do
    assert_difference('Anexo.count') do
      post anexos_url, params: { anexo: { comentario: @anexo.comentario, consulta_id: @anexo.consulta_id, file: @anexo.file, nombre: @anexo.nombre } }
    end

    assert_redirected_to anexo_url(Anexo.last)
  end

  test "should show anexo" do
    get anexo_url(@anexo)
    assert_response :success
  end

  test "should get edit" do
    get edit_anexo_url(@anexo)
    assert_response :success
  end

  test "should update anexo" do
    patch anexo_url(@anexo), params: { anexo: { comentario: @anexo.comentario, consulta_id: @anexo.consulta_id, file: @anexo.file, nombre: @anexo.nombre } }
    assert_redirected_to anexo_url(@anexo)
  end

  test "should destroy anexo" do
    assert_difference('Anexo.count', -1) do
      delete anexo_url(@anexo)
    end

    assert_redirected_to anexos_url
  end
end
