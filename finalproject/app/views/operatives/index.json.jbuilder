json.array!(@operatives) do |operative|
  json.extract! operative, :id, :user_id, :name, :status, :skill, :deployment_time, :job_id
  json.url operative_url(operative, format: :json)
end
