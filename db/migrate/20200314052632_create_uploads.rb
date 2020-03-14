class CreateUploads < ActiveRecord::Migration[6.0]
  def change
    create_table :uploads do |t|
      t.string :title
      t.string :file_format
      t.belongs_to :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
