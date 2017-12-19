require 'test_helper'

class CouponListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coupon_list = coupon_lists(:one)
  end

  test "should get index" do
    get coupon_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_coupon_list_url
    assert_response :success
  end

  test "should create coupon_list" do
    assert_difference('CouponList.count') do
      post coupon_lists_url, params: { coupon_list: {  } }
    end

    assert_redirected_to coupon_list_url(CouponList.last)
  end

  test "should show coupon_list" do
    get coupon_list_url(@coupon_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_coupon_list_url(@coupon_list)
    assert_response :success
  end

  test "should update coupon_list" do
    patch coupon_list_url(@coupon_list), params: { coupon_list: {  } }
    assert_redirected_to coupon_list_url(@coupon_list)
  end

  test "should destroy coupon_list" do
    assert_difference('CouponList.count', -1) do
      delete coupon_list_url(@coupon_list)
    end

    assert_redirected_to coupon_lists_url
  end
end
