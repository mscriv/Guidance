class CreateToDoItems < ActiveRecord::Migration
  def change
    create_table :to_do_items do |t|
      t.string :item
      t.references :to_do_list, index: true

      t.timestamps
    end
  end
end
