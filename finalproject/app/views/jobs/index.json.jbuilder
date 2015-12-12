json.array!(@jobs) do |job|
  json.extract! job, :id, :name, :payout, :reward, :difficulty, :description, :time_to_complete
  json.url job_url(job, format: :json)
end
