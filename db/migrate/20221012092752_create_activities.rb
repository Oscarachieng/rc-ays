class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :title
      t.text :description
      t.string :venue
      t.date :event_date

      t.timestamps
    end
  end
end
