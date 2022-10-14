class CreateMemberActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :member_activities do |t|
      t.integer :member_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
