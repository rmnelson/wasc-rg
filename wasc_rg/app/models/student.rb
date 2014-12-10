class Student < ActiveRecord::Base
  belongs_to :course
  belongs_to :program
  has_many :course_works
  has_many :grades, through: :course_works
end
