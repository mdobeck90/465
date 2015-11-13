json.array!(@image_objects) do |image_object|
  json.extract! image_object, :id, :filename, :private, :user_id
  json.url image_object_url(image_object, format: :json)
end
