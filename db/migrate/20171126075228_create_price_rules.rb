class CreatePriceRules < ActiveRecord::Migration[5.0]
  def change
    create_table :price_rules do |t|
      t.integer :grade
      t.references :city
      t.references :category
      t.date :from_date

      t.timestamps
    end
  end
end
