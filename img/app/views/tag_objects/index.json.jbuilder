json.array!(@tag_objects) do |tag_object|
  json.extract! tag_object, :id, :str, :image_id
  json.url tag_object_url(tag_object, format: :json)
end
