# == Schema Information
#
# Table name: counselors
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  bio        :text
#  contact    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class CounselorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
