class CreateCoupons < ActiveRecord::Migration[5.0]
  def change
    create_table :coupons do |t|
      t.references :coupon_list, foreign_key: true
      t.references :user
      t.date :valid_from
      t.date :valid_to
      t.datetime :used_at

      t.timestamps
    end
  end
end