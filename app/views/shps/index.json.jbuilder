json.array!(@shps) do |shp|
  json.extract! shp, :id, :shp_nm, :shp_tel, :shp_add
  json.url shp_url(shp, format: :json)
end
