json.array!(@health_tips) do |health_tip|
  json.extract! health_tip, :id, :category, :tip
  json.url health_tip_url(health_tip, format: :json)
end
