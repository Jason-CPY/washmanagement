class CreateCategoriesCities < ActiveRecord::Migration[5.0]
  def change
    create_table :categories_cities do |t|
      t.references :city
      t.references :category
    end
  end
end
