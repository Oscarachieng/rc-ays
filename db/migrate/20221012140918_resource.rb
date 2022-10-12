class Resource < ActiveRecord::Migration[7.0]
  def change
    rename_column :resources, :summary, :description
  end
end
