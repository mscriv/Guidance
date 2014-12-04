# == Schema Information
#
# Table name: to_do_lists
#
#  id         :integer          not null, primary key
#  month      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class ToDoList < ActiveRecord::Base
  has_many :to_do_items
end
