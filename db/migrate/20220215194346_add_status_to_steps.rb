class AddStatusToSteps < ActiveRecord::Migration[6.1]
  def change
    add_column :steps, :status, :integer
  end
end
