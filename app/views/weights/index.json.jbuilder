json.array!(@weights) do |weight|
  json.extract! weight, :id, :date, :number
  json.url weight_url(weight, format: :json)
end
