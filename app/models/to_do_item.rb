# == Schema Information
#
# Table name: to_do_items
#
#  id            :integer          not null, primary key
#  item          :string(255)
#  to_do_list_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class ToDoItem < ActiveRecord::Base
  belongs_to :to_do_list
end
