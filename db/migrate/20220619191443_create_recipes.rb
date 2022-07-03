class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :desccription
      t.string :writer
      t.integer :price
      t.boolean :availability

      t.timestamps
    end
  end
end
