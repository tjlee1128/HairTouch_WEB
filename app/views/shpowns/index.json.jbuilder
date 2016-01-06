json.array!(@shpowns) do |shpown|
  json.extract! shpown, :id, :shpown_email, :shpown_pwd, :shpown_nm
  json.url shpown_url(shpown, format: :json)
end
