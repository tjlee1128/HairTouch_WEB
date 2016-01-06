class Shp < ApplicationRecord
  validates :shp_nm, presence: true
  validates :shp_tel, presence: true
  validates :shp_add, presence: true
end
