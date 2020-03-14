class CreateEmails < ActiveRecord::Migration[6.0]
  def change
    create_table :emails do |t|
      t.string :subject
      t.string :recipient
      t.belongs_to :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
