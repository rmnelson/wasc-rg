class Course < ActiveRecord::Base
  belongs_to :program
  belongs_to :teacher
  belongs_to :semester
  has_many :students
  has_many :course_work
  has_many :course_outcomes
  def course_number_title
	"#{course_num} - #{course_title}"
  end
end
