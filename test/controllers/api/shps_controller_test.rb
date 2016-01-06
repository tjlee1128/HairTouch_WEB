require 'test_helper'

module Api
  class ShpsControllerTest < ActionDispatch::IntegrationTest
    setup do
      Shp.create!(shp_nm: '이름', shp_tel: '0323434343', shp_add: '주소')
    end

    test 'GET #index' do
      get api_shps_url, params: { format: :json }
      assert_response :success
      assert_includes response.body, '이름'
    end
  end
end
