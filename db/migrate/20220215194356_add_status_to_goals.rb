class AddStatusToGoals < ActiveRecord::Migration[6.1]
  def change
    add_column :goals, :status, :integer
    add_index :goals, :status
  end
end
