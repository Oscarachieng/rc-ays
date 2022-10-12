class Council < ActiveRecord::Migration[7.0]
  def change
    rename_column :councils, :memeber_id, :member_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
