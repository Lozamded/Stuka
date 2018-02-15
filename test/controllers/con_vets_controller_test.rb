require 'test_helper'

class ConVetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @con_vet = con_vets(:one)
  end

  test "should get index" do
    get con_vets_url
    assert_response :success
  end

  test "should get new" do
    get new_con_vet_url
    assert_response :success
  end

  test "should create con_vet" do
    assert_difference('ConVet.count') do
      post con_vets_url, params: { con_vet: { consulta_id: @con_vet.consulta_id, nombre: @con_vet.nombre } }
    end

    assert_redirected_to con_vet_url(ConVet.last)
  end

  test "should show con_vet" do
    get con_vet_url(@con_vet)
    assert_response :success
  end

  test "should get edit" do
    get edit_con_vet_url(@con_vet)
    assert_response :success
  end

  test "should update con_vet" do
    patch con_vet_url(@con_vet), params: { con_vet: { consulta_id: @con_vet.consulta_id, nombre: @con_vet.nombre } }
    assert_redirected_to con_vet_url(@con_vet)
  end

  test "should destroy con_vet" do
    assert_difference('ConVet.count', -1) do
      delete con_vet_url(@con_vet)
    end

    assert_redirected_to con_vets_url
  end
end
