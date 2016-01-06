require 'test_helper'

class ShpTest < ActiveSupport::TestCase
  test 'create a new with valid attributes' do
    shp = Shp.new
    shp.shp_nm = '미용실'
    shp.shp_tel = '1203981'
    shp.shp_add = '경기도 부천시'
    assert shp.save
  end
end
