class Resource < ActiveRecord::Migration[7.0]
  def change
    rename_column :resources, :description, :summary
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
