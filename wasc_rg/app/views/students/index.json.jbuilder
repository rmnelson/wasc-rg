json.array!(@students) do |student|
  json.extract! student, :id, :student_id, :full_name, :last_name, :first_name, :username, :grade_basis, :academic_lev, :availability, :course_id, :program_id
  json.url student_url(student, format: :json)
end
