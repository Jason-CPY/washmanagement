class CreateUserCards < ActiveRecord::Migration[5.0]
  def change
    create_table :user_cards do |t|
      t.float :real_money, default: 0
      t.float :fake_money, default: 0
      t.references :user

      t.timestamps
    end
  end
end