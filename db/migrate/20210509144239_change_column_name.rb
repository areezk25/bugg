class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :tasks, :type, :todo
  end
end
