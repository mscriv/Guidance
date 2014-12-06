class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.date :test_date
      t.date :registration_deadline
      t.text :description

      t.timestamps
    end
  end
end
