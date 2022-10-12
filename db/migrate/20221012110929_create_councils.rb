class CreateCouncils < ActiveRecord::Migration[7.0]
  def change
    create_table :councils do |t|
      t.string :role
      t.string :responsibilities
      t.integer :memeber_id

      t.timestamps
    end
  end
end
