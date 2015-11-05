class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :category
      t.text :body
      t.string :img_url
      
      t.timestamps null: false
    end
  end
end
