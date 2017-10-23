require 'test_helper'

class WorkersRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workers_role = workers_roles(:one)
  end

  test "should get index" do
    get workers_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_workers_role_url
    assert_response :success
  end

  test "should create workers_role" do
    assert_difference('WorkersRole.count') do
      post workers_roles_url, params: { workers_role: { role_id: @workers_role.role_id, worker_id: @workers_role.worker_id } }
    end

    assert_redirected_to workers_role_url(WorkersRole.last)
  end

  test "should show workers_role" do
    get workers_role_url(@workers_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_workers_role_url(@workers_role)
    assert_response :success
  end

  test "should update workers_role" do
    patch workers_role_url(@workers_role), params: { workers_role: { role_id: @workers_role.role_id, worker_id: @workers_role.worker_id } }
    assert_redirected_to workers_role_url(@workers_role)
  end

  test "should destroy workers_role" do
    assert_difference('WorkersRole.count', -1) do
      delete workers_role_url(@workers_role)
    end

    assert_redirected_to workers_roles_url
  end
end
