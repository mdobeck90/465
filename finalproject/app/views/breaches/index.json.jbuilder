json.array!(@breaches) do |breach|
  json.extract! breach, :id, :user_id, :integer, :target_id, :integer
  json.url breach_url(breach, format: :json)
end
