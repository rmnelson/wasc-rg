json.array!(@course_outcomes) do |course_outcome|
  json.extract! course_outcome, :id, :course_work_id, :outcome_id
  json.url course_outcome_url(course_outcome, format: :json)
end
