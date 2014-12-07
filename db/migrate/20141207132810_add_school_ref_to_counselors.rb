class AddSchoolRefToCounselors < ActiveRecord::Migration
  def change
    add_reference :counselors, :school, index: true
  end
end
