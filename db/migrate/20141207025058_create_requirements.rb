class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :year
      t.text :description

      t.timestamps
    end
  end
end
