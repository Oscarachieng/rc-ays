class AddColumnToMember < ActiveRecord::Migration[7.0]
  def change
    add_column :members, :image_url, :string
  end
end
