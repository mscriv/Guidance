class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.string :event_date
      t.string :starts_at
      t.string :ends_at

      t.timestamps
    end
  end
end
