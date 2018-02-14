require 'test_helper'

class ConProcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @con_proc = con_procs(:one)
  end

  test "should get index" do
    get con_procs_url
    assert_response :success
  end

  test "should get new" do
    get new_con_proc_url
    assert_response :success
  end

  test "should create con_proc" do
    assert_difference('ConProc.count') do
      post con_procs_url, params: { con_proc: { consulta_id: @con_proc.consulta_id, procedimiento: @con_proc.procedimiento } }
    end

    assert_redirected_to con_proc_url(ConProc.last)
  end

  test "should show con_proc" do
    get con_proc_url(@con_proc)
    assert_response :success
  end

  test "should get edit" do
    get edit_con_proc_url(@con_proc)
    assert_response :success
  end

  test "should update con_proc" do
    patch con_proc_url(@con_proc), params: { con_proc: { consulta_id: @con_proc.consulta_id, procedimiento: @con_proc.procedimiento } }
    assert_redirected_to con_proc_url(@con_proc)
  end

  test "should destroy con_proc" do
    assert_difference('ConProc.count', -1) do
      delete con_proc_url(@con_proc)
    end

    assert_redirected_to con_procs_url
  end
end
