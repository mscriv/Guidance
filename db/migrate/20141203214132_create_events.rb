class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.date   :event_date
      t.time   :starts_at
      t.time   :ends_at

      t.timestamps
    end
  end
end
