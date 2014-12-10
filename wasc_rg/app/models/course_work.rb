class CourseWork < ActiveRecord::Base
  belongs_to :course
  has_many :grades
end
