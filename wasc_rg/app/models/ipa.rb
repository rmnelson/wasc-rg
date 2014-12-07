class Ipa < ActiveRecord::Base
  belongs_to :outcome
  belongs_to :course
end
