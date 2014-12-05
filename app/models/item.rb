class Item < ActiveRecord::Base
  belongs_to :list
  validates :name, presence: true,
      length: {minimum: 5 }
end
