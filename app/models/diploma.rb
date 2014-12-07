class Diploma < ActiveRecord::Base
  belongs_to :requirement
  has_many :subjects
end
