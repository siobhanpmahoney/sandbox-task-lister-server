class CreateDownloads < ActiveRecord::Migration[6.0]
  def change
    create_table :downloads do |t|
      t.string :title
      t.string :descripton
      t.string :file_format
      t.belongs_to :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
