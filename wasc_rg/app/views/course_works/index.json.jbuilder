json.array!(@course_works) do |course_work|
  json.extract! course_work, :id, :name, :course_id
  json.url course_work_url(course_work, format: :json)
end
