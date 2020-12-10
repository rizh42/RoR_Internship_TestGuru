class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.string :title, null: false
      t.integer :level, null: false, default: 0
      t.integer :category_id, null: false
      t.integer :user_id, null: false
      t.references :category, null: false, primary_key: true

      t.timestamps
    end
  end
end
