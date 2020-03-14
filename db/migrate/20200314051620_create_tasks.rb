class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.string :status
      t.datetime :date_due
      t.integer :priority_level
      t.belongs_to :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
