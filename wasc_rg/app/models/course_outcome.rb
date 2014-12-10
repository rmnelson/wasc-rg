class CourseOutcome < ActiveRecord::Base
  belongs_to :course_work
  belongs_to :outcome
end
