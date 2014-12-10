class CourseWork < ActiveRecord::Base
  belongs_to :course
  has_many :grades
  def hash_header
	self.name.downcase.tr(' ', '_')
  end
end
