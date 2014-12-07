class CreateDiplomas < ActiveRecord::Migration
  def change
    create_table :diplomas do |t|
      t.text :name
      t.references :requirement, index: true

      t.timestamps
    end
  end
end
