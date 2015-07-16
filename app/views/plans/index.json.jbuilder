json.array!(@plans) do |plan|
  json.extract! plan, :id, :user_id, :notes, :from_date, :to_date
  json.url plan_url(plan, format: :json)
end
