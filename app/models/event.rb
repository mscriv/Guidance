# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  location   :string(255)
#  event_date :date
#  starts_at  :string(255)
#  ends_at    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Event < ActiveRecord::Base
end
