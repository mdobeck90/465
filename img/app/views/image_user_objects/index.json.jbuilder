json.array!(@image_user_objects) do |image_user_object|
  json.extract! image_user_object, :id, :image_id, :user_id
  json.url image_user_object_url(image_user_object, format: :json)
end
