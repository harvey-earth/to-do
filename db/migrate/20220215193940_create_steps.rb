class CreateSteps < ActiveRecord::Migration[6.1]
  def change
    create_table :steps do |t|
      t.string :name
      t.text :content
      t.integer :rank
      t.belongs_to :goal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
