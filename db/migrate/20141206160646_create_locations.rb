class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :school
      t.string :test_code
      t.integer :school_code
      t.references :test, index: true

      t.timestamps
    end
  end
end
