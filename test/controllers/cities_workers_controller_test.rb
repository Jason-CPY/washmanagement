require 'test_helper'

class CitiesWorkersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cities_worker = cities_workers(:one)
  end

  test "should get index" do
    get cities_workers_url
    assert_response :success
  end

  test "should get new" do
    get new_cities_worker_url
    assert_response :success
  end

  test "should create cities_worker" do
    assert_difference('CitiesWorker.count') do
      post cities_workers_url, params: { cities_worker: { city_id: @cities_worker.city_id } }
    end

    assert_redirected_to cities_worker_url(CitiesWorker.last)
  end

  test "should show cities_worker" do
    get cities_worker_url(@cities_worker)
    assert_response :success
  end

  test "should get edit" do
    get edit_cities_worker_url(@cities_worker)
    assert_response :success
  end

  test "should update cities_worker" do
    patch cities_worker_url(@cities_worker), params: { cities_worker: { city_id: @cities_worker.city_id } }
    assert_redirected_to cities_worker_url(@cities_worker)
  end

  test "should destroy cities_worker" do
    assert_difference('CitiesWorker.count', -1) do
      delete cities_worker_url(@cities_worker)
    end

    assert_redirected_to cities_workers_url
  end
end
