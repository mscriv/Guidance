class CreateCounselors < ActiveRecord::Migration
  def change
    create_table :counselors do |t|
      t.string :name
      t.text :bio
      t.string :contact

      t.timestamps
    end
  end
end
