class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false
      t.integer :temperature, null: false
      t.integer :total_time, null: false
      t.integer :low_temperature_cooking_time, null: false
      t.boolean :is_open, null: false, default: true
      t.timestamps
    end
  end
end
