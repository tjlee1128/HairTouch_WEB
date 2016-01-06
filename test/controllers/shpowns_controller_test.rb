require 'test_helper'

class ShpownsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shpown = shpowns(:one)
  end

  test 'should get index' do
    get shpowns_url
    assert_response :success
  end

  test 'should get new' do
    get new_shpown_url
    assert_response :success
  end

  test 'should create shpown' do
    assert_difference('Shpown.count') do
      post shpowns_url, params: {
        shpown: {
          shpown_email: @shpown.shpown_email,
          shpown_nm: @shpown.shpown_nm,
          shpown_pwd: @shpown.shpown_pwd
        }
      }
    end

    assert_redirected_to shpown_path(Shpown.last)
  end

  test 'should show shpown' do
    get shpown_url(@shpown)
    assert_response :success
  end

  test 'should get edit' do
    get edit_shpown_url(@shpown)
    assert_response :success
  end

  test 'should update shpown' do
    patch shpown_url(@shpown), params: {
      shpown: {
        shpown_email: @shpown.shpown_email,
        shpown_nm: @shpown.shpown_nm,
        shpown_pwd: @shpown.shpown_pwd
      }
    }
    assert_redirected_to shpown_path(@shpown)
  end

  test 'should destroy shpown' do
    assert_difference('Shpown.count', -1) do
      delete shpown_url(@shpown)
    end

    assert_redirected_to shpowns_path
  end
end
