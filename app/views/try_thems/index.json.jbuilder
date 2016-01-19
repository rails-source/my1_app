json.array!(@try_thems) do |try_them|
  json.extract! try_them, :id, :title, :description
  json.url try_them_url(try_them, format: :json)
end
