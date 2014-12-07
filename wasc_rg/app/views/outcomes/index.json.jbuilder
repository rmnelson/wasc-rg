json.array!(@outcomes) do |outcome|
  json.extract! outcome, :id, :objective_letter, :description, :program_id
  json.url outcome_url(outcome, format: :json)
end
