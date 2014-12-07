json.array!(@programs) do |program|
  json.extract! program, :id, :name, :description
  json.url program_url(program, format: :json)
end
