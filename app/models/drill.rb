class Drill < ActiveRecord::Base
  has_many :paced_drills
  has_many :practices, through: :paced_drills
end
