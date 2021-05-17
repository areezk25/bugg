class AddAssignedToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :assigned, :string
  end
end
