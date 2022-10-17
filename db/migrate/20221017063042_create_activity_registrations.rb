class CreateActivityRegistrations < ActiveRecord::Migration[7.0]
  def change
    create_table :activity_registrations do |t|
      t.string :full_name
      t.integer :contact
      t.integer :activity_id

      t.timestamps
    end
  end
end
