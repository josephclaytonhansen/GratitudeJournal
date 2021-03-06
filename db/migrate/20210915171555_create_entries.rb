class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.string :title
      t.string :text
      t.string :tags
      t.boolean :visible
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
