class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :requisite
      t.references :diploma, index: true

      t.timestamps
    end
  end
end
