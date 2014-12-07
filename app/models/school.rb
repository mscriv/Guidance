class School < ActiveRecord::Base
  has_many :events
  has_many :counselors
end
