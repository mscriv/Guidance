class List < ActiveRecord::Base
  validates :month, presence: true
  validates :month, length: {minimum: 3}
has_many :items
end

