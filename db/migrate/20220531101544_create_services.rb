class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :title
      t.text :description
      t.string :category
      t.text :address
      t.integer :price
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
