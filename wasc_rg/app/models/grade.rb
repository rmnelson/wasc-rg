class Grade < ActiveRecord::Base
  belongs_to :corse_work
  belongs_to :student
end
