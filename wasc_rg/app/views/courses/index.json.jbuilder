json.array!(@courses) do |course|
  json.extract! course, :id, :course_num, :course_title, :units, :program_id, :teacher_id, :semester_id
  json.url course_url(course, format: :json)
end
