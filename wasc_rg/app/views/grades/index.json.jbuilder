json.array!(@grades) do |grade|
  json.extract! grade, :id, :corse_work_id, :student_id, :value
  json.url grade_url(grade, format: :json)
end
