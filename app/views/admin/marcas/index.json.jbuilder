json.array!(@admin_marcas) do |admin_marca|
  json.extract! admin_marca, :id, :nombre
  json.url admin_marca_url(admin_marca, format: :json)
end
