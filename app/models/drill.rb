class Drill < ActiveRecord::Base
  belongs_to :practice
  has_many :paced_drills
  has_many :practices
end
