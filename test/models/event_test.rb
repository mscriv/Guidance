# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  location   :string(255)
#  event_date :date
#  starts_at  :time
#  ends_at    :time
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
