class AddRoleToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :manager_role, :boolean, default: false 
    add_column :users, :creator_role, :boolean, default: true
    add_column :users, :developer_role, :boolean, default: false
    add_column :users, :qa_role, :boolean, default: false
  end
end
