class Practice < ActiveRecord::Base
  has_many :scheduled_practices
  has_many :paced_drills
  has_many :drills, through: :paced_drills
end
