json.array!(@items) do |item|
  json.extract! item, :id, :name, :folder_id, :asset, :guid
  json.url item_url(item, format: :json)
end
