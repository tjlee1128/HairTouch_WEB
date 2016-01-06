require 'test_helper'

class ShpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shp = shps(:one)
  end

  test 'should get index' do
    get shps_url
    assert_response :success
  end

  test 'should get new' do
    get new_shp_url
    assert_response :success
  end

  test 'should create shp' do
    assert_difference('Shp.count') do
      post shps_url, params: {
        shp: {
          shp_add: @shp.shp_add,
          shp_nm: @shp.shp_nm,
          shp_tel: @shp.shp_tel
        }
      }
    end

    assert_redirected_to shp_path(Shp.last)
  end

  test 'should show shp' do
    get shp_url(@shp)
    assert_response :success
  end

  test 'should get edit' do
    get edit_shp_url(@shp)
    assert_response :success
  end

  test 'should update shp' do
    patch shp_url(@shp), params: {
      shp: {
        shp_add: @shp.shp_add,
        shp_nm: @shp.shp_nm,
        shp_tel: @shp.shp_tel
      }
    }
    assert_redirected_to shp_path(@shp)
  end

  test 'should destroy shp' do
    assert_difference('Shp.count', -1) do
      delete shp_url(@shp)
    end

    assert_redirected_to shps_path
  end
end
