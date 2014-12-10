class Grade < ActiveRecord::Base
  belongs_to :course_work
  belongs_to :student
end
