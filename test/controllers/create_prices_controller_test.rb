require 'test_helper'

class CreatePricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_price = create_prices(:one)
  end

  test "should get index" do
    get create_prices_url
    assert_response :success
  end

  test "should get new" do
    get new_create_price_url
    assert_response :success
  end

  test "should create create_price" do
    assert_difference('CreatePrice.count') do
      post create_prices_url, params: { create_price: { price1: @create_price.price1, price2: @create_price.price2 } }
    end

    assert_redirected_to create_price_url(CreatePrice.last)
  end

  test "should show create_price" do
    get create_price_url(@create_price)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_price_url(@create_price)
    assert_response :success
  end

  test "should update create_price" do
    patch create_price_url(@create_price), params: { create_price: { price1: @create_price.price1, price2: @create_price.price2 } }
    assert_redirected_to create_price_url(@create_price)
  end

  test "should destroy create_price" do
    assert_difference('CreatePrice.count', -1) do
      delete create_price_url(@create_price)
    end

    assert_redirected_to create_prices_url
  end
end
