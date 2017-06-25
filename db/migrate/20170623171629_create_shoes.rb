class CreateShoes < ActiveRecord::Migration[5.1]
  def change
    create_table :shoes do |t|
      t.integer :seller_id
      t.integer :buyer_id
      t.boolean :sold
      t.integer :amount
      t.string :name

      t.timestamps
    end
  end
end
