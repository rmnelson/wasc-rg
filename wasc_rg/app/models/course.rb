class Course < ActiveRecord::Base
  belongs_to :program
  belongs_to :teacher
  belongs_to :semester
end
