class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.references :item, foreign_key: true
      t.references :user, foreign_key: true
      t.references :purchase_option, foreign_key: true
      t.datetime :purchased_at
      t.datetime :expire_at

      t.timestamps
    end
  end
end
