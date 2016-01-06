require 'test_helper'

module Api
  class ShpsControllerTest < ActionDispatch::IntegrationTest
    setup do
      @shp = Shp.create!(shp_nm: '이름', shp_tel: '0323434343', shp_add: '주소')
    end

    test 'GET #index' do
      get api_shps_url, params: { format: :json }
      assert_response :success
    end

    test 'GET #show' do
      get api_shp_url(@shp.id), params: { format: :json }
      assert_response :success
    end

    test 'GET #show(404)' do
      get api_shp_url('NOT-FOUND'), params: { format: :json }
      assert_response :not_found
    end
  end
end
